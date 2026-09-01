Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92FA62D3727
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788286234; cv=none; b=OwNe2WhG7+nnkE6wlFEdmSfbEWgcH2jZlwheqHQUnK83no/lSADCFRXrvyIW9UeawwVuhLkmDRYEUT/VP5cU71D0mseYpxB2djCle9NhYNq6iy/iknlBH5TmDLZfCdnIa7ydaa1RdXGXrh1SAUhjk3NMOb6iF55WhQB8o55Ct0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788286234; c=relaxed/simple;
	bh=tZ1P1FUiAgzgrJDiIN9fY2rtynxDlF+430WWqNM1yAw=;
	h=To:Subject:From:Message-Id:Date; b=CklUzxHeOkYkqRZoStfZQmVLl9NIlWWfMWhb+72QIlVvCFkIkHaAWpMd1diWpcUge83sSwWnj4TEFtQBkSf/c6Fij/U/zEsINT6Se5pKOJxkIVpZRJZGeEJIEeH3B9/ER0wHXLfFd/nPbODP6ws5ewTcnTkRFvhep50PafW2ayE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9QVXQIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9QVXQIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08D0C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788286233;
	bh=tZ1P1FUiAgzgrJDiIN9fY2rtynxDlF+430WWqNM1yAw=;
	h=To:Subject:From:Date:From;
	b=H9QVXQIPx5PlVYcSMbVa2LtV+VFj9j7TZaN3QCTXYHSsw09AYZmptHj3yXyZmcrmU
	 OxufIvmmmz8KKjS0JDjMZY+MFEXd5hHlj8NSMwmmRJEoKfE6Fy7Paw+Vf3EzzN0IWM
	 qjWN4hkPw6+cu+076kyptTay3/CzsGa6hzrMY68t2k0wYWhkdYoA28aANa2qtDE+XC
	 MBbmuQoSn5JhfaQivR1ZPW46Bt3f/I8RQI8fCzSYkcW8jxcBZqgEyU3zvTLJ7kJPtJ
	 944SUi0XiP9c6+0ZBBzO0r8OZ/TsvgPg83fkx9y4KsqpnLLCZt45IN1kf4KBYqr8LL
	 aUBVr0KwqzxZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC141C624D0
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828623369.31019.11719107983733208294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15886bcc0d07c2e006a4a5ec43a01ce36905e4de75ff123538b5c44fda22075d
Date: Tue, 01 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788286233
