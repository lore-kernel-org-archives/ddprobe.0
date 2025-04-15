Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC3F199FA4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744729795; cv=none; b=MpBbuvE4uiZ+EAt4176yFS/wj5OhCyORZnGuA7iSMnsrKB1KcNw7SW0VKZdbwa082ZjZ8CTOD5QtlDytOYQZY4y7ngg4/0FtdV9QnzxY27zUt+vFxR8dW9U6mInOdjBdxN8cqdfoQdyO9c1zmkzSgd1kbu+H/IVdOmjyNinVOK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744729795; c=relaxed/simple;
	bh=cCp7jx9YGdmBfcTQHpxtaXhHZuzMWCKWmRyK+e7gmtc=;
	h=To:Subject:From:Message-Id:Date; b=U7f9slFHaBZbk3XrX7UFlQEZI93gQHK8KSF9I9qtyStT5mRsYo7qdjF5YvXrtsIQirs1wj6tN48cIjM4mvovZSUfADHA9xFok7Z/RxvRFx3NHiL5VuOnLVofZlDq2gupvYQ03DwEbpVDGMl96nGNvajMuHDa843mSGd+vBpD6/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDH/4nJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDH/4nJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1737C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744729793;
	bh=cCp7jx9YGdmBfcTQHpxtaXhHZuzMWCKWmRyK+e7gmtc=;
	h=To:Subject:From:Date:From;
	b=fDH/4nJI8BQcKIPjVkRhr5rdlztCKPmYQJ++oCY9KQGtc+0c/5tx5I1evWrs8rRdV
	 Y3dn91YNhm/EwvuBBeLeSszlbXGGzCR+bOAaPUrEdivWYj3uxGas+/8TzukK6mvbt1
	 7Zr/c7krexqTqNu/HktDbNyjIaFv+cxyGvNlRVMD/W3/sal69NK/V10dQ+dJhI+t1Q
	 /LdkxyRXQW1MU5sNERxqwSBU2KJfatUiOMQ693FcdSsRjErpwhHFokCvNrzjoGnMZC
	 JCrz1//31i7JhdEw79XBHn/0hI1+cMGl6CGthmUDIuZhQ5Pw+mlMvuJ4njsbaxEe95
	 /404fFnOvlUlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1AE5C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472979362.31551.4122959015617676034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e4f393732e46dccbadea684189ef1270619d79e14e7c986c515828db99c4f84
Date: Tue, 15 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744729793
