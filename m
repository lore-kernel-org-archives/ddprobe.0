Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A9CB1FBCA1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761785394; cv=none; b=K2/68CIZHbKDT1Z6IqjpCQ5h1Ud8MFho11fHx0AKeaePqtks6ug1Tlyd8SN3tRQmMhJMeqr8Bd9c8s2ka1RvNgwitrCehZo2VEMizEnkYDgL/w10HHinaWL0os96HI2pgL0bOf06n1aM+3hj0J8MpsVy/U5JbxkQXIEnym7vgN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761785394; c=relaxed/simple;
	bh=l2EHKmK88R0ZBgGXtRKxFl3rdgHwccFiLi72TP+7l2A=;
	h=To:Subject:From:Message-Id:Date; b=CP+aao2LIeSOdQB0OZ6smI4gqYgsy8QqLBqYnTAqlz2OdjiuhM8v0Q3CTnMisEKkArM1peD/eZrrnwh5Z5oI09zJRzF6NDfIoKOjBx3hC4206JTKsDsrTlifNYfKm4HgoQ51wWegsrO/NHJMooH1Q6pdeSQdx4TpG8HlNSulg3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K06IjO7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K06IjO7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CB0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761785393;
	bh=l2EHKmK88R0ZBgGXtRKxFl3rdgHwccFiLi72TP+7l2A=;
	h=To:Subject:From:Date:From;
	b=K06IjO7sjkOMcvSxexh8oMxB5mGSfZd+funSim48lLmscLUAuEskyMPKjfQ5tGueY
	 X1MzkM6yjZrWj5uIC/IsBxNdBMfpRyDGO6VjUSiBAZFtlyE6maijZWwT6LObdjxDVz
	 CWRJZvy35458A1Jmy3HrZAdpUXBT/x0OhVjbNWWzo7Q3d5Mt+VOOfaNIkWtNRFHm+q
	 HjUONV0qtOcEPuPhi8kehIKERvqZkftcvpsjdwY59mS4lLHoomydaVeJYSSX6JUaTW
	 21QcO19rxfH6bqEzWE5Rk1t5DULvv8o2q6iVYFiNWCiVNMy0CgKG3urW1VZw9lna1t
	 jqOr0wh86jDsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D815CCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178539361.18177.16335050581419692802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bd5d90ea8b064036a765c902e8ce782ccb857994464b4c21d82f9ef2c94eb9a
Date: Thu, 30 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761785393
