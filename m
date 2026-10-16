Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E3329405
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792119634; cv=none; b=Gjq6k1IKti1CQ3rEBXFjgfx4rwBoKzACxdj4Dp1CUjc9gWibwy5fqJCjV2SjblaWwZ4ed/Kq9Q6VVhUubiqyKAl8fv2MgOaYADOExqpM/YUz+dbcy2SbIVjRr0IC8Bdvj4B5ZhsDXOzaUjzveV3l8JhOzvZvvGx5nWTKcLlfHec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792119634; c=relaxed/simple;
	bh=9dF5LefxPUIHTTN7Qpd1YgsCzhzFSiUd+igrEyw6uGA=;
	h=To:Subject:From:Message-Id:Date; b=fOK1qeoODYwPqKi3Q33WgRN/Kg19nhAR8JUF3QcT1heh4FsBQ/gIbD2iax7LqbWxMe3OcMnqzVz1CyBCv8Ywp5UdPsmkIjZt26rEcweJ2MdBqKOkWxcMjWS6P71fdR8td1ppGWSgM7c66SwQXTNC51xZm9YvGWMoopVqv04sISI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX717jmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX717jmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A09C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792119633;
	bh=9dF5LefxPUIHTTN7Qpd1YgsCzhzFSiUd+igrEyw6uGA=;
	h=To:Subject:From:Date:From;
	b=qX717jmNR8yAA3Jz6A620XkjPdyVO1WD4bhrLJd7snVW/KZVvsdxve0UdBMsG0x+b
	 Rco/qhClV4rZGvy0A1GOHUh0L7vUoAr8WjH2hoC0nBG4XTeRdS9n1jWjXM+arSaUqx
	 9eS6hlWGbT1DNH7GpwH5f9TeEoc65KUhMTsTNTtlZDYDswIsmsV9lgrTHIG/FyqTCy
	 ee89fZy8TYcCLc3D2RFdcpx185hTQTPO0FNXOy39T86tp3U/rVGBF4g64gKn3oUJrZ
	 0b1hpOhNXWo+EWUy8uTTdv1F6xntFsBxFzEFXhfGN/qMP7EBy6lo5c6tz6phdMBtuA
	 4Z/gbo8lkguww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6C8ACCA46B
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211963373.19481.16602054816733514102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1755afe17f22c393f09113312ace6bbcaa30d4403556dfda40260b6ab80f57dc
Date: Fri, 16 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792119633
