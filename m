Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E9121859D
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744130394; cv=none; b=XUq8+ZyeYaLA3CA3sMBeFmEiCCXCMe7WyhaCpFJBkf8DwmXdSDjqhjETv3vKd267aOxSELw5NmPAmDrU+69vYmb/TbI05BDPM6i09w4f9UDv9bXBK6A/bOKrI/+HA9U0k3XE/xuv5o1Trw2tENgJw1T28C1WOjrA0flHgeBnVjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744130394; c=relaxed/simple;
	bh=YtaVD1NwSRlg2SxZE22tmyqg2v9S+zWeEtZjact87fc=;
	h=To:Subject:From:Message-Id:Date; b=faojO92911p7Ex+wTznmEiL+OGI7N/ozX9iwJFtgJWrJ3Z11rNFFW1gp95kVcKHg3inspcmAgVl9YVcqvOR7CuGohyM6sJrSaUPTZfFpAfdh0y5FXAXJnBRMtW7Ex11CtQXzSe2Ryso969nBtwX8bMTRXCCo8oY2cpVE1qj4+Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKgL9q17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKgL9q17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADF9C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744130393;
	bh=YtaVD1NwSRlg2SxZE22tmyqg2v9S+zWeEtZjact87fc=;
	h=To:Subject:From:Date:From;
	b=RKgL9q17vnj4rQfkYpqEJV7HDX2rCuLRS0qTmfQ1ah8zzGDkw9e8E8Rw+sxIWVeDf
	 Gj3wWEfUQ6ptOI7z/nGgBS4nh9kexeGKMHt2WwXYbKZn89ZPUKY2EQaavF+zeeDJlw
	 fIxoU+yUYCe5OCvuBgzG3E4NqUIdK4aPTZdTtinzgm+JyxBsvZoHYwh7Bt/5vZhnbC
	 vlfxNeakB/Q26/zvHD/AkEGDIkXOky0KM/xjTa8sY0NR3b4af8tnp5KbMh0Q1mU318
	 BzHax0Qch9pEB5N0wtK0lxWNT8UZAaHlilt/tumrX7WSCbVrwfYSmQ867lRY0VtIiC
	 sQXLRs2k3xgtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B44AC369A2
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174413039362.16495.3582411618210149253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98a0d67baacd9578a45cef8376cb5009d713b7188f42770c1704ec452d936bf2
Date: Tue, 08 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744130393
