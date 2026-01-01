Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2480F27F724
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767231834; cv=none; b=BLRbXTqkozr+WB83flUfY4RKa0nUWmSqfJpZfZxnzt2qiPJcZ5m4H7P80I8Mp3N7Ix5d445+KDRwBsYjHM09T9K0U+47fbLGvI/yUI7Y47JpN/S39pqPYCZ8FL/v2MY5BmjTUi9dGcK/9NGAUpipMGFNo1NsfZhz8IhylsP0o3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767231834; c=relaxed/simple;
	bh=44GhPZst6i8cZ0c8JBfIvqyqm8keWVb2WoqeHjGJIZY=;
	h=To:Subject:From:Message-Id:Date; b=Qj+7eSD05DcpHjbd7FnCXThB5MtPgJIuWJKB0bpZViVDaC+IiEwiqcmJXvPzyYAWdw5ZEdWdZn1jhbU87iCcFowXA+fY7reFkhE89UKkpRXkPDb0oRarf9jzYKysiUskpjD7KHP8Ned/84gwI99g5XZgB3jfQQxDmcOphSe5zQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDtqqJBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDtqqJBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1929C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767231833;
	bh=44GhPZst6i8cZ0c8JBfIvqyqm8keWVb2WoqeHjGJIZY=;
	h=To:Subject:From:Date:From;
	b=uDtqqJBNzzFU+clZdn+dMxIPrmwLACMT/jNxXCY5avCUOU8mMjwQb8tdD7L979PmD
	 2qThESEvA0Q5P4HQFFSP66hOopEEhX0iWvihyfq7CkcNAhRVa6rk2j5lX1Y9csHW8s
	 MWYMF4smfdmdqL0JkAiF8QRZGdWlcU89wfP0dJ7D/BJxOZ0DJg0SnD6GEPO6QnRqUP
	 M5+WbpZCpBSr8+k1s21G+XFuHYtgGMJ4FDIao/m/GRW9nUaLz8Kpp9WDtk+dJ/hRqL
	 7gDyOuCsRtNDrKE6uv3MBuNkbTeRbc6XIwzoWU/JPTLJbkFmAuyP2r5ggEXROpIRMh
	 j/e1RSTXu8I5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920A5EEB578
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723183357.2187.13810215589052614498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a0a1eeb63d2eb563f3809147f60669438c6d25f2c28ec6829c114bcf107d396
Date: Thu, 01 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767231833
