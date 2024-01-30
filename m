Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F4A81AB6
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706628497; cv=none; b=MIzjxackb0cRgkcU/tz/sOneo0MBHVt362y10+dOo0UlNG9lDqws4TkfuyHICHGBCb3Mnk4odi8zLVVbbQxRXURfXFrlkXUF5hnY9zcDIpf+IeIccRbunK7/MXmeA5WLwst1Ls6GIPFdVNjo3IhDTdeKC5YvKgxJR+wPIeqggoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706628497; c=relaxed/simple;
	bh=gJvlDvjAt2U1WBFRSxe33WaJcppBYmdn9TwGWWFx7mg=;
	h=To:Subject:From:Message-Id:Date; b=jH6TreTYOSgA93kUGMhIJyODSo/PwRiT8/v4BNFqU5tcMrtw3hrqF9JExd8osI6ACXFM4WL6Tg2lWFckCht1xKlzDwOdwX8++4480ehegsY79SlEmn7LAG2WaAlWm6uZ/1CGapKedtowAmqxTvDI3L30X5WrpT4uUzHuuAzN4h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQvnrN/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQvnrN/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7678FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706628496;
	bh=gJvlDvjAt2U1WBFRSxe33WaJcppBYmdn9TwGWWFx7mg=;
	h=To:Subject:From:Date:From;
	b=UQvnrN/CRZpYhhx3qtSBmIo8TJ7TusomkmafJx1XpRqAAGzvkv+6nXlGsvIyretY4
	 k9fFSIdx0Gta2e2levok0yaUZTqcvpwckzqdFNY578h6wpCbWzjC9ceZbJhgoa5k44
	 FPordBWiRwF5L8yASJp+cz2omo/QEQQDb3P0Iuj1u01eCU5d8r8eNhRIzSHYts9cYB
	 rdngbJYdS0ISH4xAaJMi+8IeR8W+J57kvmmVzlFSDfoCBPIPlaHEs4p4NeFbO0UP6/
	 8kkyZiIKvdGOyLumNMMFhMkbjeMVH0/6Zb8igZCeexnqXBzLQqHDZfW1emdm7hQ+fA
	 +vBuR3WhPSjbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4C6C46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170662849636.6324.15770671898609432794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4fc73605c06274a580d6358312c1e19734bf310ced2688f5b691d0072136c45
Date: Tue, 30 Jan 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706628496
