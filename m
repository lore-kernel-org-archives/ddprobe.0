Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223842770B
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726848354; cv=none; b=MZs+EVjTUTKdpVM+C0aQiCTs4ZFuIqH8N42TevGufEPhpYt8fMbDQcL60DOtIuFgwYy01s+1p/bV6Jj5LWhUxA0EII1R/zNgU6ISxBanVsenOqnse7k0DS1rwe+v275KuT29hUjVnVYN3C3MIWb8cbt6QNx0EcoXzgWXsZrAkdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726848354; c=relaxed/simple;
	bh=C1WQe+zskfDcq3j92GrClBZ+9cHYy6h+eMFHXFKjUYM=;
	h=To:Subject:From:Message-Id:Date; b=LSmHYnilLQxS6DyX5F4YgcTEYB6DlL2oE06tGZeGtPVgoHPB+XsaLLi9D1nIGrsBWfuDDe2bR/UtCWF0nysU2dvOZIyXv6aLNDKvOCGuPD0yB5mXkoRU1Y3k/qJngb1Q8XDfZX4IsPA6g5UTYMRDyM7VnxWbiiOH3nqNguOfX9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKt44osj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKt44osj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38BEC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726848353;
	bh=C1WQe+zskfDcq3j92GrClBZ+9cHYy6h+eMFHXFKjUYM=;
	h=To:Subject:From:Date:From;
	b=jKt44osjblOGD7XarFJwraitQZsfzD/W5cYq36CUCOuvJ0XE+E3oe5VR/t/63vTQQ
	 IlTwGcs5mBotHxVZYK09zw/T8zxtlrw0UFCClMROCKjRTdbk43aGgq721hdhKn0+K9
	 hspdD6sd29iUG9bvPhRYPXvuUIKxf+zEFOh3BeNireRuR7X+U2ftv5hHbFFqiN7ggh
	 932oKa75uDa6xO3O+au0osCx4Ow0cU9keYHjx1ktQlouhHUjwguYPabIWDVSIb8guS
	 k6Rc5dg4Xi28GQyODawVzzDUR5LGFfm5+JMsvtjX86tHxxVR8zw5dL7+4EVTRda+JR
	 L6NlBRA5awpeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B9CF9C5A
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172684835358.31508.4896839224409332208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f032c11bf515db741dfc9008ebfc2197aea8a964396ea287e9e9ead83a2a1ce5
Date: Fri, 20 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726848353
