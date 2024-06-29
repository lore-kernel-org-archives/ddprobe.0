Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 711F53B1AC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719704663; cv=none; b=KEA0H3AB5GHVY+ay2jcqlqxm+/aYGk6ZmJxdjClug+9NdQE1YuFsyd4Y6SkCaXpmUOA/seEG1hxLrTaLBgB7HsKthiYDYL2nHKxKwk069zMYMNX9sjl3kOLYOZrYFiwtSI12fTSpO0F4/GyKeHDz2nhwVwwD4sOmzDvcbPAPtTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719704663; c=relaxed/simple;
	bh=4Y0axOYRhXQGRetPzGuX2McWStBxO//2592yPWrqfZE=;
	h=To:Subject:From:Message-Id:Date; b=cxLZa8DZxduvXrHRctiVJAndMDYkNLEiMS3UDNkRIBeUyKqPXykiIK+tWW8F+uky8LONxC/V5SjDcA6W3uqqgnU/ueA0WcKDCQUlICyet/MlPBFU9+uEKvUF5kx9tepE0RCK5WY7LOJeBJ4cobAWgnlSk7EmPBRfRqR0387ybus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WY2/vbM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WY2/vbM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B64C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719704662;
	bh=4Y0axOYRhXQGRetPzGuX2McWStBxO//2592yPWrqfZE=;
	h=To:Subject:From:Date:From;
	b=WY2/vbM2QTiM3TVWPmoTdOC1cryCttZZpcW+hPF1XcjHzwew4Sg6iTy/g+Pd86nbD
	 L9dIlQRZYg1yA+msZXLj4K0mE56g6qwvYjhWwWtaFTZxAXxPQ1OLQi/k8eOv7xgg2f
	 cvbF3BXPcRjsOOeYNQo+fav8Mgi5EAivVtojhEh+E5fAwY2bzSDzth0Gm4GIVXsfVR
	 8mQeChcDrAuuTAVeZQxGa2vWvQ6gcFTanZi1Llj5g/cOhuYjFXYx4gJv78uAielUFS
	 vDVobqtFaUQQQq9kp6rVL51Lap7GW61YB32O0UE0qyhHmDA4VvoDaFZNU22wcCzh3s
	 5OLT4N89lGcZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF726C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970466276.5341.10427417411953617200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d1312f8a3cba4f1cf1981b2090482996c40033598afcfa5d3aebcc81d5ac98
Date: Sat, 29 Jun 2024 23:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719704662
