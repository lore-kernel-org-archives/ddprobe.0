Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C800770EB
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717710443; cv=none; b=IJARJ3ehlsBeN2Of7gTylILdgdWcGjCY0bEeVszfWLPFFxIatc7TJEcEIEyb3C6w2YgY1A4xzY+fAJ2nXVLhHum1ZumSkd0ZbTUKatp2LNSpJs45GQ6aAQ0YKWHp/eWUGeiPosrB2HVYplQm9haea6Hxy6xEKFOXZ3SmvKieZW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717710443; c=relaxed/simple;
	bh=bRcFcaM4cdYJWt0KsSpKuUm3nOzwot0Hkt+tdF5DTIQ=;
	h=To:Subject:From:Message-Id:Date; b=SWgdsueKtuLKMycH8NHNXPVtZsCBJL4DsTcFtvZM6j6ozCZGOODpRRZj0Y2sVYOGAZi21fT/ZS4a2aFYnqcDFTK3ZumgBIJ6+jLXdjBsTOEGa6K4cSUcnYaZYc+5N5E4fo0A4pqTRH/Ej2aZEmn48/0ttGRiPG0h9HU06Bq0Szo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ks1J1Zms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ks1J1Zms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3277C32786
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717710442;
	bh=bRcFcaM4cdYJWt0KsSpKuUm3nOzwot0Hkt+tdF5DTIQ=;
	h=To:Subject:From:Date:From;
	b=ks1J1ZmsC8BMM6rCdQ73YXSf4wZufKCo89N5a365iCj3Q1A9Yc0P3wvmnZtd5r/xZ
	 jUTmL1wBA+odraWArIgHjVjGOHjWG9Jop6DP/oZY9s2K8agx+4Tf94ybyYu599CKP/
	 qHgpjHTiHnfW1I6lky8EDT4piaJdMHsV+QFQmnY8fMjpiOZNJVyMPBfl5F9YVfF4v9
	 lz5JiVKGva7kmUt6dKdasaAHZUPdMPINghGNrKIZHNC4jem9H0AcnDge0IF2GVhTlJ
	 68+5fNbDBTmEJcsXb95E7QUZPHEH5VUvG7iCUWHIkcvmVYfFQVrvL84VcoDggWuR9N
	 U51RHfy4omSRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6616C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 21:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771044278.16764.15488954752791569411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27056e7d2f13578ecab4990af4f8f3ce48b4d8f192815a9a9e64bb3d7eb27f39
Date: Thu, 06 Jun 2024 21:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717710442
