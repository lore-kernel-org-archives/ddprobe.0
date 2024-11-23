Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3241023098E
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732368354; cv=none; b=vF5/+zenOv/wqyEt5vmSC0nUj00G4NdX7MSSpKB63jnphS1bMos/2iPN8u/S6lMs2bSFMrb8UfL4vsr/35Vo+LUeRqjZxgJz4sH+HqWVJ7xLSl3TiidElgw9cgfxlt4hB1cFxiLpxOgNvYX/vEqsNeFa3SiBVbt43s3h1eo97HE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732368354; c=relaxed/simple;
	bh=5OUxSjVvUw9O8sKfbkBNnzyjxViUf9/zdDdKBC+s/ts=;
	h=To:Subject:From:Message-Id:Date; b=g3LwL4ymcd7KEs5a5YJyhckS9R/rjvbXxXdLNb1bHym303BiwzmVrMQuWHW0xeTnDBWVxYCVInWGAxvo2Zugh9ZCjQASeM4+H3oERawFJhoYej1YxQXcAy8fcJUTKR6h8D2FaPMPqBV7b4yF4qFkbMPTFdahCCkA3A9ftVdIn3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K4kRDF3+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K4kRDF3+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0BCC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732368353;
	bh=5OUxSjVvUw9O8sKfbkBNnzyjxViUf9/zdDdKBC+s/ts=;
	h=To:Subject:From:Date:From;
	b=K4kRDF3+CgrDVRRD2yaUGMUv765qFBIwClqj3/89vicVStoSca2ih3d541g7ytceA
	 f12QfoZMbtY2+1slWDYZgEqfYdUGkfnZvPK5gs0WjKpyqnKIU6rXyXuu37O4wELHgn
	 igaXymgsojuPlFB+UosiCIrA2za4USJPjTcqAWX95bZuscBxfOeosViQ2Bdu3/D3v4
	 WRjyC+6gr8TRFpPxpGCFPlczvZdnRfHgSMk7PmjksR36bb0XBbrUPzC6eHnCH7GLh7
	 3dV53W96k09KT3QJT69coajPFFbQfJYBSV+zAukO3+Y+NWhxjgs3AUpYZtTsFWApZQ
	 6BQaowCOgJSwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978D6D111A1
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173236835360.20958.13754587474486398982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d72fb1ae5e9655fa0fc53c19d925c3841d3a3f99b48d38a3fb1c5803321fd03
Date: Sat, 23 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732368353
