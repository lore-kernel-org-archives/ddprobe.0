Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F142F5A00
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759493994; cv=none; b=GJIajyuz3BIgyGLeRNX6/E8xJZildZIWNLvUon+lUkR4SNKaqoCWuVkj6LBlJX0ehZGdNVa4hal3ejqLXISE6n/eSZJyyG7LBBym+7Wo0OxDpeNtfvWossEffPXZPj67O+JVfta+zyEapy6zou/Fecn6Hqh1XNUao/FR6dE52DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759493994; c=relaxed/simple;
	bh=/rbArZJ7Oo4gKWAo8m+yJlEjkhnAgVo9QTBWNvB8fPA=;
	h=To:Subject:From:Message-Id:Date; b=AR2E0087rHMZJgLieIVvXJT78ymgunZulikCcHbrNows8XMVjwm4R6vdyU7aB2G/8q9v63MNKGYn7hpwBLSo/ellIEcbhv9MAKdhghINcZeHPCl5S7vOLysAC7ZSereYK7M/V7ylPKqUxWErMC6oGOMDdB2ZBwIPuU7xdMhjYyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWwB2TGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWwB2TGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEACC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759493993;
	bh=/rbArZJ7Oo4gKWAo8m+yJlEjkhnAgVo9QTBWNvB8fPA=;
	h=To:Subject:From:Date:From;
	b=eWwB2TGiJeKnBY/CL4gmCBjjCM7757NbbyqITwlUDHVavPdhrjP9XrhRXULxIwLPh
	 bGzhfS6g1MB4kDFtq7SsOdiyC6ZeLE7ZAp1JewXdm7mp+VmunOCY9K0iyWbo8A/zpy
	 lji4PcKD1ZCS5GO4ozyxfXNOig9tFKCBmoB4xlKfYKARyEMiu/SHqIugzIJszyIQFQ
	 JTqKmiBivE3ZO1ZmDLzXNm5oq0ATGpeZ+dXgEecmi0TGuh1+FPm6gjhAjs/9B/801L
	 BGh5utRAYO9a8vFXnSe/TmD4hyjlmdcOub+7Tc+S0dG0whugn4E6c2nLP/9c+W0cC5
	 BKQHEmVHoiAuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C5CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175949399358.14615.6085002522175207009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bd0ba9eafd94103240618cbd48571553c15a53313b3ae01dc7745b9eab4519
Date: Fri, 03 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759493993
