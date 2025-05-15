Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED2F52F88
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747349994; cv=none; b=jGNU1xcVOC0orsGiSwSslguqRvEIcvPuFyboAlc+GLFR/wtgo2xmr7KNcrv8Umgp+teSS6nXAZrcRt1iSLgqjVK4Vlz4vy5esoDBuKnXNJULMMlqNiwNDIvGgU0DrHN8lXpCNwCBtA73kwdsVvJ3zBWpPKs5Gq7QEKLO8DI5sPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747349994; c=relaxed/simple;
	bh=zjTykw/imWscLUQar55AJ4ejUGBTaykbqR76FutUPGE=;
	h=To:Subject:From:Message-Id:Date; b=BRMEsq1YwlZcBFRbFZEtz3IqoXqjQp2PcrbeOWLRJlVWYINd4lEnXJS7nFIn4+eEY+e6y982TFHaPIUvjvbRH/rHwWM6VYXBYKet7qJ5LQBkMGyJ6vynU043by5My0XviyCP2ZObe7MnTZH8BHgAihNubn3Qw1N/4/dK5EDj4AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lrw7U/P9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lrw7U/P9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7850C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747349993;
	bh=zjTykw/imWscLUQar55AJ4ejUGBTaykbqR76FutUPGE=;
	h=To:Subject:From:Date:From;
	b=Lrw7U/P9dFn1W89tvoVeJs+LsyeCPjgFClQhpJXALz6o1XdP+Yn8PghTzKdidX6ZL
	 DRXWbqhXGidmfi7nhElCEp4mgP1vbNLQMOpK4kaP+ky9FTEgPm0OL0RfndfBBqJKeK
	 beKaMmWtbVBeETNPC5VeddUoNbntoiyqAx0jyr8O92HSkjU8D38Y4rFBPDxqpQqHSy
	 1QqZdPvlbvJBsnQ4VL2S6sHeDXU/BvFuCQwB1AOcIedKiVRw3CQbvkmTCD5aCTQUPw
	 2WusqRP9XG1DVNompKgh7wCW9wGEU+3FZSFdlTR36v5GuFrDSdu5AJpQ6TfBLM3I+S
	 XgN+/wZ1XBy/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951D3C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174734999359.11982.11745781903707764781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6262b815852c15829de040fac8e6907d9f0c4e4e23bacc19125fb9b9f945450
Date: Thu, 15 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747349993
