Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC14256D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718680703; cv=none; b=Z1xneKa9XMpCZ/mBBpEuQICFY4Mdu8eEMSJYYCuE/UuHC3tgPSoFN5KRPbV4FvwdgQGy84DABK7pPOsAA05VMpBoNzV+Hna6zIX8qwD5O3+Ee02lhug6j3xpiNkKb51aacAyu185mKk4rtc+bc/toGiRlTnrqOa8ALTz9JhNQv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718680703; c=relaxed/simple;
	bh=NZLK+Y+S9T5gNhvTT32t5xZV6ysd7HQQB+nrIqzDimk=;
	h=To:Subject:From:Message-Id:Date; b=BFPh6GCNJD8kfzGqQR4xAYVl8vCmsIqhr2JYsW1bmBxEGafIVoykdM3w+0Mc0ISacc5Fyjyo/vHELa62t6GpM4mtU9pi+en3WwdY88JUgaNT8FDyaIDyhr7iF50PQW0jhxgm1uHZBP1Zu8S3rEtFuqE6idQ26Z0/6YgaPdMuNmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iC0Uhm1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iC0Uhm1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23AB2C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718680703;
	bh=NZLK+Y+S9T5gNhvTT32t5xZV6ysd7HQQB+nrIqzDimk=;
	h=To:Subject:From:Date:From;
	b=iC0Uhm1k0b0oyyz2MWTah+GOdr14kBJB2hzvBnObNooRV2+3O+W7ejT+b5Ol+X0He
	 dMb9DzR1ylbxq0t0kQHF04uOaDEVRE6Fm2C6ukw7UGPfteOTkc6I3LHJTp8D1iVwuc
	 80hh2JnhUQo+MLWg9jLDxp3VILhfo4YhxB57iumztj2NfRNL2GF1raePMmGEDkTcok
	 WhvNsoD8cMYISYbtkjZw62PqEQ6H0iMVuH+8ETIZNs58fqA9r/CdnFrUsmGl84/Atf
	 p0OoE+fH/nFKpKs2VYvw8e8cjSUFpraD66M1Av51ALANBeyp8DQqUJmWejMWoaJZzW
	 xwfGxnwOTG3jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E599DC27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868070284.19609.8827212328822328584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf6a96f06aecc412d6cee8311f21db5fc161a4eb9b7ab2b45553a8ff65daeb2
Date: Tue, 18 Jun 2024 03:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718680702
