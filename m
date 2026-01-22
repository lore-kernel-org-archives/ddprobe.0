Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186153A8FFC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769115235; cv=none; b=swnsKysUvEF3E3LIIJLHA1laE6tRygB1BNfO7xRb+LYVnyEN1ALckRk1g+laupSS+4xoyL72CBlCLgCvo/XiFPk5JY/mOfbsW2ew0+5q0CWPBcPs3WgKlx9Rd+hcH7gJvv3KjupMpyzU2NJMZZcNSg53lgKnDTbCjwvxM/GO+8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769115235; c=relaxed/simple;
	bh=U9CoDKLVlahUQJWkXJrt82AAvzYKNQUpDF5PlYdumh4=;
	h=To:Subject:From:Message-Id:Date; b=HbcRMkEFVgn5JsImFjI7VXSOVeGYtBFJaqQXSJvx+/WC3dV+on1yKEIEb4h0x9GgnnEsnHFpUe+mvSRhwWTmfqHBxFNc2Av6JVR3vIQ4q5K2Q1oaCYg7GIQYPC3llt+Map4JmDxxTQeuXKhTWfRQ2ST5vgKFmhSH/ACV0RQ8fEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QJpuge0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QJpuge0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E42C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769115233;
	bh=U9CoDKLVlahUQJWkXJrt82AAvzYKNQUpDF5PlYdumh4=;
	h=To:Subject:From:Date:From;
	b=QJpuge0s6HPUkoE7kR0yWOVLEmlTxX0pCzq6c41pDB1DlfF17/jpO1GuKAHS1zo9V
	 UBwWlsnIdPhHgM798PNVFRbXNUtVA6TTgR2fkHpiCcH/KcrN2O/zR3HoG0UzjbN4J5
	 a4w+ajTaiD+3aK0tDHsWY3yxbIbyzt0XieRMls2lu/f36WHBn3tzVUPLBS6JQxYDJ3
	 ohy9m5/FaZTjZr6lrVysiPRtsRVU6kDPe/qbqlgkhIXF84z6iVY4ok2QD2jd5YfzlL
	 74Wg7b6VH7mafT4zMIQ575syibTYkEvDGj0PRYzZgLH5g6eP5KggTk0vIem1OBXBgg
	 F2/buGKiTDf3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BFCD6CFA4
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911523361.20069.9834326785134509648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a531bd44f0b8255542cd424d90b2e970200db55cc1567904245306b7d6b6f0bb
Date: Thu, 22 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769115233
