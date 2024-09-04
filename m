Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F381D679F
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725458154; cv=none; b=ogU7xjl4tVeeKatS7wNs2J0h+PiE76SbxA+XkCA9FPEfnH3TAy7YpvFJiUOjHZ2jwErPR5SDLVjEKozxewqlHYSa0+z6on6udayiZfG08hISSKqZ6bAlhMH29kWs8HMqdzqdvL1BDun07lUkjV3CorgSlcQlK6Ik7CfoF47YOck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725458154; c=relaxed/simple;
	bh=mATGk8RyGENUd5WIofBrjh22lpVWtCtr2mgzJbO+QmI=;
	h=To:Subject:From:Message-Id:Date; b=Az6oPAS4dMpBibQT52M6+vwoCcGB0OUdHhWQyKLkNkDtHhKVx2etBAUILw/Ya1dC2bg7erlV12fP7fnCaTfh6fcO9ikfMY8zt8U14P8VpqGAnGU4VtQ9nHvkzmxY4z3Yua97XtX8uz6oxZDByRqumoSI0SjCKgEpfrPC9pKqEMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVwLcFX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVwLcFX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2078C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725458153;
	bh=mATGk8RyGENUd5WIofBrjh22lpVWtCtr2mgzJbO+QmI=;
	h=To:Subject:From:Date:From;
	b=PVwLcFX9Tksv2XYNVcQ9P7iW4HQxiL+UwopBYOaJowGRBTtUHiU7hchvO1DOeLHcb
	 AZ0kl1WaRW0joS3uXoc1rGupN2wbFx6afQVbBUiykZW0aUCkcvkE7HdREWFAniqOTG
	 H4IGFmj+w2iGnmK0kB9kmfvS41zSln4iCbt3coWdUQu0XTs7qHDY8xDs/JWlGlSraa
	 2iXRzVQ/Av203Cnwcuew9rNDcnptwePwLwkAs/w/N9lchIp2kU4ZUh9lTIhBJ5/8Ea
	 q43j0osDr2iaH+Mzu7iyUmJOuOwRrMvuQFA66UG2l4c9Flo70qwmRPO605TM/6Sg67
	 4GSJU6oinL7uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90952CD3431
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172545815358.1504.8238665040349628246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ead638f754ead8b1f70c410c49bf88e2070169ef5d9291e92f27acb74f88aa
Date: Wed, 04 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725458153
