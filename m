Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221AF47F4D
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722971754; cv=none; b=WQrZ/vaLvO1BcEbf0AhvOaUByDWnkY2RY22QMTwolpFW63WKgy7rHpbhxoUj05+6Vk4m/IfhjS8FzzbovrFgGf+7NKvtuVZN7jNSEEPlh92s9SHEPucbJuIpyJwIcJdCPQq/0Y2aigv+D2TFUkVXK+dC+rVXC/Isj8xWtjF9Mlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722971754; c=relaxed/simple;
	bh=mv/H/cBszq0r9rXHXRaWcHQqlfc9rPuorcYkH/a+WfU=;
	h=To:Subject:From:Message-Id:Date; b=fQMYRyDlA0lcBOVA4H8DV+MXUTitaZi6t8KofweSnlxfLsJPDy7IUGzaNjQIUQ2WPw9/5fDLeu/8lpKiRLc82EZ3TjnWfGz2CGY/uh0Hrj/gXVXP+X4fqa1r1v49fMVspns4pNiKfOfghSTXL1cChwMXKat6grrzgjlcujbMPrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hqLlED80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hqLlED80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47F2C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722971753;
	bh=mv/H/cBszq0r9rXHXRaWcHQqlfc9rPuorcYkH/a+WfU=;
	h=To:Subject:From:Date:From;
	b=hqLlED80FRqYDUD1oaFJaextbXmeyE1u0I3UTw/hKI9muY/vxkBvLo7whhTqtQ2BT
	 lv3bqS397LNrCaH0ZDHvPzB+GCCpCwea8WOHJKAOVqZbP/AfBPI69U0RHpx8FHVJ7H
	 VS27I/xeayJ1GeBLVL5//Bs1F19f5HkQzunjvUMJSmaZUghEMbByDm6x1HdTbtDMYh
	 ocPzeBp6VadN/YUBAs2w3rl1E5Vqje14ovx+VsvR/TF08WgxH+cnHDVRKlkIJjrHq1
	 85omDcjjFf+MVBiz2z1R6Pm2Vqx44UdwDPAPjgKYZDW3T6HyO27WwID/JM71BJ6/ne
	 PouALicXpU4Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97346C52D70
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172297175358.24718.18395070866863322925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d7a48e771f7c012a604db5302b7b096a77168a25604e3904b5d2f9dafd709b7
Date: Tue, 06 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722971753
