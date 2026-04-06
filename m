Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64BF63A875D
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775506534; cv=none; b=AHKKYFB/AjF0l1FUsPL1LSUlD6vJdstCPcxfYfBPd2D6PKEVjjjmEfAvoQxT9RaOcx6U9za5kE0EvmrQZXKba565HjO280lS9Go9jjW0C/FjxvMzPsDaysbeWD2vyum94OR0Fa7qQhgvX/7WTTAwcdg7zAorUbOsEOVTNDxUj4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775506534; c=relaxed/simple;
	bh=1QHxOKX5EZ/BBDs/lUgj9hT8SduN9Gl2HP/fU3BJWoo=;
	h=To:Subject:From:Message-Id:Date; b=rTjXZNxBtMK/HLXCSmDQxSnZ4BlWeRzeMZTEC4YX/IB2EMt5h6DlnY++x8dIj9PTHLml7VlXtuqvPjjJS0k/FaP9m5Je93tM65v4vJdHmW2LUNBXom66wzeExaXPM/ZCytxSn9mE/bh6fc54Ts583bb0z5I1xMbeOhRzxkFjjqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e16YGENI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e16YGENI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD70EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775506533;
	bh=1QHxOKX5EZ/BBDs/lUgj9hT8SduN9Gl2HP/fU3BJWoo=;
	h=To:Subject:From:Date:From;
	b=e16YGENI/pZ3B0CDugwb5kq32+EpVXy2YNuRs2+csdEc9YOqPVdFJ2Uz+iv4neIRt
	 5/X6RhdZGntTtZws5NoTP3v2uYk8vM84Dv2JSXS/Opo3S9b+QHTTsLGHkQ58PLcKJd
	 0VoTwtusLMCZ5lBJ8tYeLodpe/2L2XYsi/XOTs/NWO8Jc/BZQwIyhHlxLuVFW5uKIP
	 3oHP8EXnlwlphjxBiziK+SLynf3DCGHZOmiJPEOXq+XTI/yLtWqY+Eocn6rL3o4LIe
	 AKrGHek7Us7QzVjHpQ5NKTfcX5DlPBeww83hvBVR+WN/hK+vKzEG64EaCfjNh6Ic0F
	 ZDN2IUDvjWqTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F9FB5165
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 20:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550653368.8204.17357927497632927993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ecc42664cdc7c75c9c3681c4b8cee2f6953705cdd452918fc12ca48ee10128
Date: Mon, 06 Apr 2026 20:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775506533
