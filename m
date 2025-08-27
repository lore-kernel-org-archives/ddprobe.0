Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9BA2F84F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756312194; cv=none; b=q3WrywSxEzRqv2nAVbnw9tIR3i0Z9OkFf4I7WtMAq8aS0zFUHEJDGHsv84eSB/C6imaKEFm/5ODxrdR+PqDjkXRXBjEt73Non3ZbHP9lYRrZIK+sPH4RKXNpD9OEPEXvQXkQcBwepKboqBCJh55lTfZv5agvMQQEmyLvxHxmTUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756312194; c=relaxed/simple;
	bh=1cKOBqS2IeB1gnJVO5/1OYXMXlfWZV46Irh5IyJSOJc=;
	h=To:Subject:From:Message-Id:Date; b=P1JhyjjZPm2RkFoP9vpfsCNCW0zMMA02gAxESupdQqJfDiNsJGTlmIXDtDTAQLNJ+egKSvE4mLSt9XD2NgFawS7nPRRtnNsSJo/ItRglIBZpaaiKQ/InBZ/elKLG533Y6RbkmI2itORtR1JkP5KN88moS0tyK35F+mbHZylYv4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Io7xuPuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Io7xuPuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A467CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756312193;
	bh=1cKOBqS2IeB1gnJVO5/1OYXMXlfWZV46Irh5IyJSOJc=;
	h=To:Subject:From:Date:From;
	b=Io7xuPuhAXw7Wdnwb4t+IY9WRfujODVeKJRGib9Br5ADAP17B3lCLJwVPA/RuJxbD
	 Pf8aRZp9ntn2QlEfu5sxKfEOrkWDtqUmCpQJ+hlM7oVXeQrqYZvDYev38aJqKhVEzW
	 208wVyui0p7bZRSCxIZCi1f+KVvT6y5gTfd5aaagMwZYCxYQe+a47gTUwKyJAmSWqI
	 WvDrw7TSvkjh4SNXkx7gGTWBbsxBTHZHtslJN9m+0imyCHF9hB6dN4KHmEG5mlTESP
	 tve0LG7cElxkWYVuuspJlBHAKlLlnG13LLUHsqJWzalYnQr+/EPdzeXgFaBBOLmYga
	 sdIBaWkHOzCYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F6CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175631219358.2432.17339323744727984826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319fe5855bc8a46913688d8ba7d97d194db0fed4b4a09893dae1b058a4bc3bea
Date: Wed, 27 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756312193
