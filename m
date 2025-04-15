Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E83910F2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744699194; cv=none; b=EU15g6xwnPVOXYi0LC/wSRuB4KZFIQij6ileblBCdsyo2qWF7n5T8lN5c9NiB2oF0yRnWD1ScEvZHm/r4K7I7XSZ8ttzTxzg02wKZ1idFsChjG7tELHEpt4mHkEnYhTcqT5+u/azRudkAKZ+fDB3FfUjgMg4j5A+iU03sBIHUqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744699194; c=relaxed/simple;
	bh=BI7bh2xVO21T/nMRaa798cefTISBrQ2rI3qk3W+35z8=;
	h=To:Subject:From:Message-Id:Date; b=nLY8HNDrszWO2ArhTeGYOpBnUKBc0ghHXjjTOlCEixvgPUukckCnkANj0tmHZiM3blt1POxOtzkAaYQW93LWuhnef7PaCzsNv8CGC++6DmyBUUdlLk0ZaVySGfkwvUqVH9msUO0UTN7ETy8Sjot5zFALnHBzf6mI5OZUOMQvrQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3Dqlu3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3Dqlu3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33E0C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744699193;
	bh=BI7bh2xVO21T/nMRaa798cefTISBrQ2rI3qk3W+35z8=;
	h=To:Subject:From:Date:From;
	b=b3Dqlu3WmNbbyei3czaX0JqLTNIfC2a3XLrWBa36SIYZks/iej46P92Mt9t4P9kut
	 Eha3MqwNb4fCaxm9rCq3elVjiGPE3vnr5FjONvbn0FaQTvFatcvy/Un8+cK47BjcBE
	 joJTk6WzPWkc6t3Lf27G1MNUn4l2DU+/pTe+VyKrBxJHZlMMDihEopmRRqqEnc6tBq
	 s9bPno8ck/H/lzL8ww+tBIsiVnJR03fgnBR9auSyNO44UmPwVvfah/YhEj8RG0cQbu
	 w0Gjv2UmZCHf154kpvRGTrBJGdgCyKA+ONCmVn+UQSoa862gEs7cZDaEnj2wg8E3+a
	 Zp/EOiu793Daw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C61C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469919362.32740.7735094175840790283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e37198233f99950768c55555cd1cef19d62ed24832646dcfbac5bc7f3f5043e
Date: Tue, 15 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744699193
