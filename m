Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E44B1A7264
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729691754; cv=none; b=c8gCNuqgprGibOCCW4zgQs8aijfWBHM52YT8XxeIaIfCOy5GjIuetsXRSFRcSunoB1Y+elZwvQC2vX+q7I1XGcF5ockBDNMNnpprbLTypNT9zRpUz51rM35MOTU2+vexA+79jIyoF9Qe0jP3hqxtZ7KstL0eS/ZCVdJAJMFbVM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729691754; c=relaxed/simple;
	bh=sxFh5q8SOegD0JXY9lQ9ESBzhixIbq5I1SBI/r6buNs=;
	h=To:Subject:From:Message-Id:Date; b=qhK9fiwFlu7tbT5FOx2JJrlKi228yACtKBazlqqxGidR6fiNPBJ1EEufKQt8aBI5l9F81xv71cZJ1fa05DDl2UAKfwkUb0L7zCK0dlYFJtj43Gnoc0p8XdwjlA7+thqT9njetCX4JpGRpYBsWo3zPo+IaeDpQGHMhhVJ/pM8QFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxq+uLfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxq+uLfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACEA2C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729691753;
	bh=sxFh5q8SOegD0JXY9lQ9ESBzhixIbq5I1SBI/r6buNs=;
	h=To:Subject:From:Date:From;
	b=dxq+uLfDnSlcwn4OrZu2FMCLee7mp+KXyh5UlEDT+8szBsYuEccheC65Fzv0K+x9M
	 gNotxbp37NmaQzzuX+tQ8VlZVWcAiiODL50iUinpoOkKIfgdpmGVs656qw6MW9De+D
	 /2W4auLQRA9RAIPNL68rWyLwIijmCN0+g+sU+J7VcaVPKsT3eFJKlqkYbQgYRp9rqp
	 p0ntdOffNyXWX6uOfYyEkb19C2iKfX055gO7pX5S/2f4slqVCD+P4p9pv0qE/nHbS0
	 eaJCa+0rvHl7rTgGTDjNRgQXL5y0Exr6O9s2Osyxg4QigntnyKrCK1hZAtt5WoYbgA
	 Vgxz6TIR4HHfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EC1CF538B
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172969175361.12201.666142565214297813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f29f836d03d53b225da38953aa23faab962d6aeb60a89bd930c3bd0042cb026
Date: Wed, 23 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729691753
