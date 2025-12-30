Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D66E326D73
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767113634; cv=none; b=Et4SwgLaxNWXsN6QRQ4PZpCPTDqZEFlvLTE4uzk/eKecn4jkOXoYP1XglKqs2iKtug78eYp2FlUQJ7uRZaERSUj3dewpWk8xoqS982GQugr+r1+9rkKGR+zbIeQY6dpSEu7hG0QvZMi25A2HuCYfy4QSmTosJXZP5NiyIhBaW88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767113634; c=relaxed/simple;
	bh=8Ok7WwnQdx7Mmxk7QUS49hidxIPHwPoaMJua/ssuGuo=;
	h=To:Subject:From:Message-Id:Date; b=ALw4LjU1KN+380R4vE+WucmXeWL9hwfaA271m5+zceRRbA56PHnERPcLNyP4oSSzS9XUrqwxAFbMG2aZ/gG4SGsC+NPQSZJ/aRrV5T8uzwZCaJ5HFWecTbdHOlPzFJfXLFgeOSRru/lobqOtoZx7Jf2il1wp5CFi4cUVyX0lImw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sESE//ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sESE//ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9515C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767113633;
	bh=8Ok7WwnQdx7Mmxk7QUS49hidxIPHwPoaMJua/ssuGuo=;
	h=To:Subject:From:Date:From;
	b=sESE//eyYek272cFCk68ftxX9aFfmLtt7DXA+sm5RY2oOHiw8WGbOwDo2Z6/+/viB
	 vn4V1MFVwFKU21FvSBRSPp0ygAGdcv4MM2pofEJQezPRtt6gblgyKZuLQI5yr91GTE
	 X1i/sjKKCkViiwVoHn2h+JozGsX9ODV5dOa0WFOaWBFmHRKIgvwZQbnkuAKcYnI2o1
	 v0WQl1E1kqjvVpot0/BdmcwhUoWGsgsqasFA/AAboY9FDBv5zn56eL0tMjemn/Ylb7
	 3K5r+uLpBfcRAAGhUdikez9wjmRUpefdNpT61P/TMEICjEeCv11T3scA2miJxrMH0k
	 u2/yfncnPAt/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975A2EE498E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176711363359.1993.41509993192771837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c735b734003276f11207320321fbddcb7b61d09fc5324efc7ab85d484d7a46
Date: Tue, 30 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767113633
