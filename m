Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBA681804E
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729646753; cv=none; b=dy8jeEDbWJcKtmjYcdC8ULDs0zUczQdop27bCiI3VnniNRF/a57I/MzywzV9lp/vqyYCx8o4/UK9fJxHlHEG400IhJGZ3ZBrALB8T46z4CuM86idgnguFySrW4RLdTSSzuAJMIm+c/NgzcOi+5sAa+981vwNVs0dHq5M1bCMqYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729646753; c=relaxed/simple;
	bh=cARby/xSLsw5eUvUe3N/S1mC08tuq6zvJj+e00XIkkU=;
	h=To:Subject:From:Message-Id:Date; b=Ol6b1uRjH4giVre17pf0ZMGtTpIgOv3xolvMAJoe8mL7XZJjNEqOktnLWkn2iSx0BfC3uGH4dUoiI96SEbOHTrx2iOTPiO1ETdTpcvjv/vg9afbsvYvLhbu8PbOb/Fsmgko07QmugyrAI1U0xjEFVg2r7wIJA78qDcJN3H3Un7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSKgX+Wk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSKgX+Wk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7848C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729646753;
	bh=cARby/xSLsw5eUvUe3N/S1mC08tuq6zvJj+e00XIkkU=;
	h=To:Subject:From:Date:From;
	b=SSKgX+WkIb6BM0xl/bDpQ9KBLpTRqjoizqCIReUFZcgMZ2PSN9pfc/XGIwJ6FPhqV
	 XMVQku8hNC1jrtmEN4LZTN3Rp5WIQrO5AO64haC/Cnme87CxN3QVdPlvttAVAzn92U
	 d0o5N1plxW6DjImfYPIvcTxz0Dus3o8Qsk5zOztdV8BqENNCBSLbJGR9nQmJIK2G/1
	 5EacSLlOVd9PMCH4WRUlfm58OCkpb5Q6mQe7/5g/qewTrIO/de6Eo1Tk/mfe//+gZR
	 /1EEe1LPCY/JxYAzlDMhG8z1lrqMBkhyFjmP6hK/KbjuNztL2wyjYXrPcnXq/g+ymx
	 /sMyUfuSXPl1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91167D2E006
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172964675358.434.10855519606842914002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4972edbef46ea6d8d6f36a21e480ecc8909317f72b81beb501409e7281ddaef
Date: Wed, 23 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729646753
