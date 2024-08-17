Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B5E14D70B
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723913754; cv=none; b=baF+gUwMnKi9faBwnpywqNapYoUQJ0x6/VOIoQjLLxa38KVQON4Qpyin1vw53t8IAqiJhMBdCeDp8UBNLNWpmRu+6OylWEWqAgsl7claHlkmRw3lVDMBI3EHdJ1yG44Tp5JZf6/6nQ7ec0lra/mRpQDbQL+ZqRj3XoZV2I0dDdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723913754; c=relaxed/simple;
	bh=wQ1rZifbXoJ1YT9wT4ypkRwRqCv3hTA9ouM5+Qjl9AE=;
	h=To:Subject:From:Message-Id:Date; b=Eni9Ybaj1jkIBWYQiplKJGTXhLc8zzMcEOkFBEwsxCWXFvDZ6xR4FOktuFmDqINPngqSM5cY96S/mzwyfM1nIGdqH/nmGUz91Wq40DCQKce7rRTf2AuKPrvkBbGHhbHLNfTLOMEDhKRCPWvXYQBNipuAGFon2Lvrx/ZI1oMcpWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOiBugTS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOiBugTS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14A4C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723913753;
	bh=wQ1rZifbXoJ1YT9wT4ypkRwRqCv3hTA9ouM5+Qjl9AE=;
	h=To:Subject:From:Date:From;
	b=NOiBugTSXMkpWxFYQqaaGCAvB6MkaKgGpixhxaahgDPwYXZbftv0VHEbVbha6oiWz
	 oHAYKukLEvj82cgFI7vUAgf14llVYiLPMqB6boXCbaeiMSE9c0kXJwB5moSnkCJlTA
	 anNnim0mgu2p/amGSeWxj6ooDKg/yk/Qe2C0wXTYSAWkJR/+KwkXRlXfWFpCVHqsru
	 O8raweN9nbr3ybp9TKZGpZNye3LdMpVyySvwxytZBOMvp5uDbgD/NAtLIO5ZfU219I
	 2T/+u/i0Owa5ev2TfIXYUGaNdhgpL/KQctMiA/IBbG+bc5hRNm+EW0F/03v8Lz+Ryn
	 ljTQgC8SNXysw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EFD9C52D7D
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172391375361.6832.5743173571032869149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5900ed7165782ab56b5af96975c9f8067b651438869a0d217a92ff2ede86bd1
Date: Sat, 17 Aug 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723913753
