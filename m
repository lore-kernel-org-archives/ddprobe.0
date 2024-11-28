Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CC084E1C
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732788354; cv=none; b=pJrf2dAQh2E8iQbqbbc3yFC89IysVqZ+1DhUu3ODUK+V9/NDxReTVJVu0jBOBUGdJwxnRxMDbp1u7rDCZlOCjVy86f4Mp+436D0sjHvAJD41dxIcnoaLw7i09x7lvgNOVG1virzdAlyOajixST5ra8XO4Jk3Y3369sTrS/fK+v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732788354; c=relaxed/simple;
	bh=uxakZZv7Xragp7eplQypp71CfLaptWtC+0B9gJXnodM=;
	h=To:Subject:From:Message-Id:Date; b=aSRMS6VZw2tI45YXYTgrwz9nuqR8tX4pThj8XIxU3sC8kvS1dUQR9JJDu6dsDJ53Engf/qFfmvrEtpOzZ+XJ7TicmNu+nH95BQkkkT+3+tenvuZq2dRDJ6PJ6ypos7M4SFV/2u9Et1dr/QDxtLdJuKAVn0n78DqhXr8kyCtnOas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLP2GVls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLP2GVls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95F7C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732788353;
	bh=uxakZZv7Xragp7eplQypp71CfLaptWtC+0B9gJXnodM=;
	h=To:Subject:From:Date:From;
	b=OLP2GVlsp5JVIQBPSQejBak4kafX8dFd+d3CL5welcGsFYq2ORyZEAWOs+VSct/rP
	 j6IS6xrAcI/CKQoO4h78dHtlE+M7DTWqWSlt2sDNkLwCi+b7SaSCxRLjoMsCW2Y5oh
	 niNXt0zt+zly8gGKCeA5d8AZkkcHl12hhT4Pr6ca+eYBycfqKODSdYOjsMeN7aX3tA
	 8Na3tnDNYeNvI17DkFBCh1HgfiJwUZXvYJghWtbO3eeHaZBRWObWYbECxUXelLW/2P
	 RsTfiohFE2dybLyPix5IrnnTplvX8KBKRedNKMOCHG4JELgCitObj7iHZFkyDxyD89
	 yE+RVTyWIzXaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96147D690EF
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173278835360.1004.595387142839832708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1811a4ea18cda73ca234fea75ec136af42c5a3d5d04c160b5a2fa55a2bb62fd5
Date: Thu, 28 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732788353
