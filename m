Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A3E234973
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791605434; cv=none; b=XmpMSJ44ZewxCACMhYHoWfMHuyORWHljCTqPNP9K43RigfIKvXpAKR4n428IQE0oHKQKq8u8/FEtMiL+keG5fN71ilTefDNw4bSYzO7N2vw4odjBvvv23Gxs0De0dClQQX3IVMKfw2l6jOIVJYrqJiLokEptVh68dRErPBWTIkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791605434; c=relaxed/simple;
	bh=bbj44yiunAzj7BOX/19+dWMrEkY0YWhQjV+NUKRgTPk=;
	h=To:Subject:From:Message-Id:Date; b=RjXytxwgDxc7d+Udn9ZcHExhq9VmifyXH8HmUhpyWzHLwAZTxpzYBNofOFsd9bJTezyhxoUYxFgP1QylFvd4qX3fPJa8Tak2ZoyDNox+hNmbAm+x6swVXFMpsj/WaK1s+U41vxwv0/mayiTTdhwKvLeGXcHJOIP4KWCxGQKFDK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gu1g+NyH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gu1g+NyH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0046C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791605433;
	bh=bbj44yiunAzj7BOX/19+dWMrEkY0YWhQjV+NUKRgTPk=;
	h=To:Subject:From:Date:From;
	b=Gu1g+NyHhAhcuuBzrQISRQEIK1H5bqevkSgPo0EPp2eurd0biBfm+2ezUX1O9GzFl
	 htgk62rivEpi0aTbWGFL0bvBnRHvddL5SYBnalTXXLt4oZVJInzMgTcItb1TSSej3d
	 4fKX0BEcnoc04Fg4Eb4lFthBbXfiXNZ870yikvCdy+8nwMI99OeCOVxfIGz6kwqZCW
	 myQMpfXCjUistLp/A6RLXgxd4+4GkE+AXOfRz5+S59Vh+Fxv1HJRnehfkPGA0r6O7Z
	 wm/+cOPK/ZYSAzC/pmOAUJUlxbmmcWMqeFz+WNWpCj2vpVGeD6kItS4dSjtAx8mgQM
	 sj4ga3rzk6n/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF16CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160543368.27989.1464370875794329454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e93bee19554712821bbddd2d9b140f89734e929a3b0add5de96e7716943f5d2b
Date: Sat, 10 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791605433
