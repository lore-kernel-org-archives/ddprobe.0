Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CDE1E507
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722515754; cv=none; b=bd6RdUW413H7MUVSBm9kvKyxU/4pSUeaozMt8Diyc8UT9PQiJAwbzO0eMODBBQk9DRSxcdRghawPFLWUOugCfjn332KrKfAWqnc/1k5PCzOHenlg+V6kLz8M0RCR0YgmEdfzIO/2Nv0qHz1pM6Fz4iUdp2eLhboKqkT9C9ZVbZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722515754; c=relaxed/simple;
	bh=llMSK09Eq3zK/jPcZ228ZY/62Dfb50EuxBbhMe7AoCw=;
	h=To:Subject:From:Message-Id:Date; b=Z2EbITmQ7s2Fk2sJEH+wxLOfqOsTMay5Zumr+MLIg2WElY/iiFDvN5mD6QZuKCxjU1JTSajNgTpQGAg4ddlYyV/qgVNVlVUNnWsgkL9sUEa69dFPkHQZs3ggN5PEevrBUlES9coXCrw0E5LxO0T97DJGqhk8HoeoClCvVq35GDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQLmlIgu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQLmlIgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFFDC32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722515753;
	bh=llMSK09Eq3zK/jPcZ228ZY/62Dfb50EuxBbhMe7AoCw=;
	h=To:Subject:From:Date:From;
	b=AQLmlIguhNrebN72XrL5fbGMDkjr7PUcRmIKvOEJIkSYh4H/xkBfr94DLx7LyjZIb
	 hxyLwNp2X3XBNDWv/NQ9WbBwPxIq9DPXM+pWV9OD1mFwtdV7vmVTpLSScUBFVAF1ig
	 13oGbUofiM4f+6S/3mqimyyTNZ9I8YephLVrdQztLCbNuleVmHXRqkFES8I0b2ttIf
	 ZxRQDlKgGh6pqOEEK9Ge59v5p06CeC3OAnwQOH1MA+YOTk3Qf6alpdcFX0DywvmOTX
	 P27o4XO+LVDlqoclL8dDb/49e9I6ZZEThGMX/lPsTRpWntQnde7uvpL5hGs42eGnRd
	 N+DRAsij+uaBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADAEC3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172251575362.32084.4773229952656105779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866e823907b685afb827c700891862a943dc308e0188d2db84c56bd22b512c98
Date: Thu, 01 Aug 2024 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722515753
