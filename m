Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241681ACEDC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755917395; cv=none; b=Sfv53mGbS14qvPFRvarFrNtKB2vw1B19LWgT8WbMDQ//OkKma83dGJFmu6A9+NQXACxWI4i8c4M9dVmLS93mYGsB1av1PFNchhe3xRBir85wMkJIIWRHK8qZ9D30/UfsB4pRXQiLAbo2xSyoZxmg0wcaxrhcQYvrAdOP8uVzrso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755917395; c=relaxed/simple;
	bh=iqzonnftBahsBSoy7vxyzW9TtLyzQGVLVIDtWD0OaIQ=;
	h=To:Subject:From:Message-Id:Date; b=iNdqMhwqLQvEOrEatZdHWCG1T9Icazy5HX0URi5OnnIWOrIBrWYocdP4/ZYUtOW4VwaLGTfgaj26zG7lzlgtLX8sDHcsoHDUmeWzjOejM43M8N9TTpDLL8Qy1uIHIGH06vH/Jw/semn3dvMBbazDo0T2ECABf9LZ3FI1ANXzlxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8tLTf4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8tLTf4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC0C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755917393;
	bh=iqzonnftBahsBSoy7vxyzW9TtLyzQGVLVIDtWD0OaIQ=;
	h=To:Subject:From:Date:From;
	b=U8tLTf4oargEbU84GKTUNkIQ+aLzceYn+a7zT7CzabizDsM6i6tn3rGAx/kUKAFNd
	 IVOzj+6Epdq0Wp2D+ypG526+g0dFubnB8IBqLeI6PpDFsIOKr35xQHKPorbayS4h+J
	 tLoVYXorQSdWqPmaKRB4ecx3VeErKhWeawKSVZ715curuzuyknn9cTKP1npwxUxRT+
	 e41gDZQPBsQ6S26kqv6OaFxY5TcwAeOOqJA/Bo1JQUgEzZBqi4EwtWwCKN6INeYcW+
	 J9pCxDFI+aMwgyYlMxzsLWy/eLCQetqaC2vh9JQ6OGzJB3eQE8wK9CwMQX2vnauXcL
	 mATYz5+KBxnXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E8CA0EFC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591739357.31678.14430122149007679334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e8ffa2c5809578bcf95b73d351df67a4bd27dc389e0fbfae8c3bead3c5b29b
Date: Sat, 23 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755917393
