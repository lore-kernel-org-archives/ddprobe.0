Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220FB200DE
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725644154; cv=none; b=WmiErUyx79Tyw/oEvM8/IU/+aj3VnSud/oa3yd2HrUJyKMlw9Ht86/9NXTK+ga9cY9u919KJMb1ItSwt1otnXsb7MIrRHOn1iUgE494Mkrvp5RvrBz9e34QDh4iYnjS/wiQPZbcQvL1j5Q3qR+gANvYhoVGhhRlIj0bz3BaVS7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725644154; c=relaxed/simple;
	bh=ykR5XOa+KhtcLzKJlf2IJ69GlIS0lqusWEw/e4S5Waw=;
	h=To:Subject:From:Message-Id:Date; b=hnAsQM7m58Out+4Ow7NQCs8RjpZ1xGi0+WxlpC6YrHFaazJo1RNYj+67eSMP5OcjeK6tFwz5lS41z+ErcyM7cFVlmNZOavptyTHCwcXyq7vcG0Jo7CwfbqH9BoC9yTh2n4ZQxnPs23++qo+q3AMeXFYwF6HMPhLoh+xkpvKK9DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBcurdmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBcurdmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0E7C4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725644153;
	bh=ykR5XOa+KhtcLzKJlf2IJ69GlIS0lqusWEw/e4S5Waw=;
	h=To:Subject:From:Date:From;
	b=DBcurdmTQWwgi24QBXwwGwr9TudviD+R+hGvVnmE1izAynuskZ2g4XUYHKP4yUH09
	 6Nt1VVVtvY5kaxaJHGIoqWFYg6vjsXK1vKHF1JrR/BcM3iCGXVpJb8HafD8jReJPJz
	 If5cVu78Git/sfzUzi+Zud0FudGNwl0FrpqMJlUxJpYQXW7pZ9v8+jkd/2IhhcAssW
	 Y8+IjRvHG9OmQRf8Lu7qfOFl7SuDDtXHlHp1COTY8Z4JVOYlSeNImktLmgwtpTwfQv
	 wWZia8oFFzuHV7emdaKGuBz0TQXaI+kQMBmNXoD6c5TELamDozTJKEivQhaZEPuNq0
	 2/AV0I6NaTBBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9811BE6FE34
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172564415360.32363.6428869326530198596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6b2ec10e851e157e2bf150eace370c7a9eacaf554c113376122831ee72496b
Date: Fri, 06 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725644153
