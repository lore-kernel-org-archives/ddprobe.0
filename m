Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD761C68F
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743856194; cv=none; b=m9GYEtDNk76YuA/5HSnp1G1pYgr4gS1s4JSWuDH2g4Niu6+jRbxcJvLwK5ON5QOOSlp45IexT5oYiNoSR/aYDD3x8REWvnUH5w7m5INNzT9whb7y8Kfov7kVDMnvFSrKBwc9PS4qqMLV37nUNFqDmz5cN4sw+MYs08UKFrKBtXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743856194; c=relaxed/simple;
	bh=bj+YHNCO2QDDUPpVD1nyHqz9iwqb2i2nCFrOr8ecUH0=;
	h=To:Subject:From:Message-Id:Date; b=f6pXFvnL2QaKBMCOoWgZf73tvPD9vF1YlRXQu1nPGzPuNXhBdnN+zGjfVACjyg/+pVF9w2eUjat4vyASSpyyST+G0rIC7QiLu1V/nH3ixLnv3C4zspfXElx7vznUdJIKRisnT4Tsq+HHM+FDv19mEMnkMDEQ6+tqmzJgh+L8OZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sc6XFjWz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sc6XFjWz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A72C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743856193;
	bh=bj+YHNCO2QDDUPpVD1nyHqz9iwqb2i2nCFrOr8ecUH0=;
	h=To:Subject:From:Date:From;
	b=sc6XFjWzqLwfGKy7QruEI0rjz6qFv7zxK9AKUNetf6qsO9vfyao0YzF2MxRhVrcs8
	 9GrR7z6B6F0iCuhhrcSVoKDl6zDsHyKzPeUR7n+YONsEC64fZWkVagRZMtsDvbYWsy
	 ITYPOFjOwzK3R9jIN4F9acImqsYEaHk0BnGRzx4H2YvTMBBg4EUbQtsyihZEyxO45p
	 6s8BBkQBZxVccZ/G6t/S81XkZooGBWI9zZBIsJ9/M1TNia0lMa6Go71/fdChvRwAQu
	 CdFXt3pgDPklntn6C41O+CIA51lxSrUq9erOU21CI9RrVlHN3QPrdm+9zyPD9CCEv3
	 b6w12Vn5zsqzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B66C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385619360.15049.10667037813324918435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96b205102f856be9f937e0e4d1bf708fdc8ce9c6d47af61137d250167a0f769
Date: Sat, 05 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743856193
