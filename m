Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC851B4C4F
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725888954; cv=none; b=aTRPgj/468UW0wDfA57jTprU+k2HTzQKmVpwfc2k7MFrVgnQG8AYZX3MTbPRkcGp8NdKY+PwwydmakgmApfIqK7NMiBc6yH0Bnk1n4ekOOkwsOprKj6CWC/gT4cenNVqKPeepS60egE1CB9SNqq6w64YyoCijWM6/iiDtrzc/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725888954; c=relaxed/simple;
	bh=11qSUBXquVELZj6TMIGxfUqgncHxs3F6/HfAKMu3xG8=;
	h=To:Subject:From:Message-Id:Date; b=H5IBVFpIToPzyeCCXPep0M3aX+U7fpRNEWmaUcdBuhHkQ/m/e97PbDlu3o6iMc1q5dHBiryzjmx+pKPf+EBrZJhg/R++MO+shmAkJsI/tkwDb9+HXmdXoApj/ByDs/4EYC693zvaD7VCm0Xgv8PJ1tt18GnlMYX8VdfVotiCyQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PGdESSaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PGdESSaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA56EC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725888953;
	bh=11qSUBXquVELZj6TMIGxfUqgncHxs3F6/HfAKMu3xG8=;
	h=To:Subject:From:Date:From;
	b=PGdESSaLK0E5CiEk0DW1BS3zSaoMM0ivM9S0fTn/RKF6+ACLwJPhbxhdEFVHVQVTp
	 xTHTC5ILpfC7DHkVY+tPGX7NUoqNbp85YUVcPT0aIgTLNxLugr3V/Fwzj1q9wJzPyX
	 irFfq1bfCmtrUwrOv785uk7YeFe32BQvnrLe0DNIPFV27OYoDkA3i3CCc/0SORk3T1
	 tpX6CU1nVMoSRXWaTa8B36foAdV/7G7kJoP2eVjKNXoAOyOu+hyBJh31QyX6vCfeCo
	 Fwj75POKihihJ53R3srj6o/uXpFAtwlUWCar5rPR97NJZbQd4wCuMheMJphFQfz3zI
	 T009Gd0ZwZjpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CB9ECE57A
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172588895360.2733.17826976245164863038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1df02417b977ae8b0987afbc14ed96a2b1ea4c84b6069e4262e88a462e33956
Date: Mon, 09 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725888953
