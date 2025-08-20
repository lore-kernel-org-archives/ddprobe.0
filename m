Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17662256D
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755675594; cv=none; b=TlyRx95ShEgT08ZONFTKU3saxGyepO0VvFbiGHpHV86d6PogvKgIYexuz8p5IE0i+RvTqVr5wdNxTEuOSGWviHDiUlLrSLNT0xid3oIXw1bZRuuJgyBJNGQojiriNMDDHlXmY1jHJeraOJcOQN5Km90vaQRYJ4QppE7GcDuwqLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755675594; c=relaxed/simple;
	bh=gwyMDy0yxm84x4FagVIPTKT2hBukOx2/fd7TFlHt690=;
	h=To:Subject:From:Message-Id:Date; b=E8eiA6zwof70KAq3KxtYpvz/dYi0TzFUuFMBDu/6g+nHTl62VMGVA4TcSu3F3YL6GUkFTh57jgLOwYProJNJheqMmC6WPzke610qd3Jqt2B8TGaAnYklOAKfsxnLBdarZSX4DhwNCagUx6mrH9+2aogfWtrng/6UhJg5KwPxXP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KptSYi8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KptSYi8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F959C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755675593;
	bh=gwyMDy0yxm84x4FagVIPTKT2hBukOx2/fd7TFlHt690=;
	h=To:Subject:From:Date:From;
	b=KptSYi8MXAGX9GbZZX7G8tKK0NnXICptgT5VFJTdd3mLdw9XhbNOUqlR5BjwaWkTL
	 KT5kuTyuJNBbdrPWOOZtYiQFRIWeege7Nco67qmI3KPLEl/XXVR2eix6yMbelg9iUU
	 fb+KI9T/jOfL6CoLz918EynewcXr/v98/s0ew4E4mkJyVmjmdQjogyflwfI5A3jCjy
	 M+Oo1aJaZlOKL/ULibg+Je2BqrpvOLnOpkzw964L3zI5cj3AvX8v8yhtlYUfZLxkwh
	 2TYOLtn0DlOE1rqQaKcmgC3G+qJwpPJbAA2PQW7/PsQ0M2sFDXDcDqLI7nE4iz9IWS
	 /KuDjR+heviTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3E8CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567559357.24148.3674412140751226982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa69d77c60702ff216db2a65fe624114424818b2c8ff0e4519aafb29eb6c4887
Date: Wed, 20 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755675593
