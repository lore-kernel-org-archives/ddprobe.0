Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B643D2FB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759547394; cv=none; b=ANY1ojrpoa+bRhBv0dLPHQKaeem6MbgYIlRHItwJPSD+ZnoZhzjBg+OgXAJ6yA6lVH+Vl+h8tb/7tb8uZBI7duzPtkK6LjS6wtt33URbZFMa8KL8evqAtlsD91cFaS82ELldp+GgLJOXbHIVtqn0Ld/OzosicKhfN/PADtzxuok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759547394; c=relaxed/simple;
	bh=/Z65gIzexCPJyRkDU7PvQyuMpSKX/b7uzM/CjsOrGfA=;
	h=To:Subject:From:Message-Id:Date; b=OycdFoiB3AiT0PSMT6Fj+CnBNmaJ8TJUjyzjfHtfr9l1bHMUEiHvxwEfugIHi2JmB+gtp98bcpewqdnZ+enL5VwrtXepxG2zZEjpoivNXFoTeF2F8cm+DJL8Gm2R27zNlIvk4VLBeyJOt1xHSbsBIeNxze/DKSolLEj9JNrrTJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeCFbPQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeCFbPQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5412C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759547393;
	bh=/Z65gIzexCPJyRkDU7PvQyuMpSKX/b7uzM/CjsOrGfA=;
	h=To:Subject:From:Date:From;
	b=oeCFbPQKQbl2RDmuPYdVD3vteRubITPk1S1aRgI8VgTc3P0BtaKFDPO5EKfhQ+lia
	 QUmfG59RImPimhZ8aQ4N/PxMv0Qi22P62ICSdVlsCGOa4IbSVMyEZ/GJvleDBYlnkL
	 QPgAho53Jv91cLgzmErDg5E4n8zdvAu5iowALKljrStcyJPTbH9G7TyNvQR1cgJSOg
	 vut124i1SVmeeS4Tv4B8D1sf6WrNhXDBOiuqxDEh50lzkRgXO9M5HhiNlmZ/uyyjHi
	 iP1Sxa38NO3DqOFBf8D4sYxf4nWtepnSWvnjcUM0jr2Bpvkx6z46BD7X+1T/C1sZcs
	 oj2JvL08NORhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929A0CCA471
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954739359.14312.16914958393499691701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba79b6734f741022231b81b1372d4026bea7b0c4201cc0abf2da35dc311fd6af
Date: Sat, 04 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759547393
