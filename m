Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386074A3E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767413634; cv=none; b=EYbko21wlAhIgropW5ZV1YLDq5H75st4k1aNQZr5LS+SqQkI7VSafaol5xvvJqNAX46iqXKs1uomtajh7Pxx2DQfDEBKr8Ha4u0xkeTpfkIQo4WlPefbTU+4HTws2tH5vHGaYXnNxYySmx+m9Em771zpGhnSIKd4SkaKJ6vR1Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767413634; c=relaxed/simple;
	bh=8xU2Zg9iNg15aSiK/XwH6Dl5RdqKTl7n//SMn35pLAM=;
	h=To:Subject:From:Message-Id:Date; b=gJoGAAJstXk4njA4wVww2T5QlhgtEm+xR2PB0DYuOhrbaD8UbN2L+twwesKrWfLxe7aNi2+GT5mWv9VVI6vPRfBkWLyaNr8TYjX6lyMBwwe/xGZrdKsQjJ90jarMbGiW7Y2CVs9zJxxsvoMzgdUiLXv07jy1Ja1ne3auwKOt38A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpM6oI35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpM6oI35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4932C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767413633;
	bh=8xU2Zg9iNg15aSiK/XwH6Dl5RdqKTl7n//SMn35pLAM=;
	h=To:Subject:From:Date:From;
	b=LpM6oI35nchMRLMnnJpAJSZD+mkaxyDksySCxThbOdY/oBZzlmVaIvzVfUtC05NS1
	 IB+ZwMG1lB7QuIUOTJDo4saBG40WwStQiliRxDcwK2yq1ykS/ErZZ2JIsJp3rKGezg
	 /5WcZCp1QXhF3F8r7p3JOGz/q/x2rde2R79nrvtHC14MdRKQg3zH9TAFWF2ePMZD4N
	 EVxBsseppWiDIQdWng+9E7X0oMcP0ZYgUfP3lREB3nu+1tVUM1qV5LxneKYtf+fyhn
	 lbLcd+HdxzM9AaoMl42BPDhAU90lrXh4lOJ1qaj/z9uCUp1w/GdTzK58HTAH0Z8RB2
	 E36D2B2LnvN6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91072FA3725
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176741363357.24102.10405951581827341599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf68b34fd48e0732705ed7ff6f7f55abb5f958d356b5c8f4910ea1e352e81a5
Date: Sat, 03 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767413633
