Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FA21B394F
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762029594; cv=none; b=pfxO5kpLezko5jw48pcFDWDdd0FiDZ1/vunHC/1ZkxeR8Aw5hQEb0+apDKVo0peBeaYxuISS9GExkwr3J0mpeP4ctdcivgjQ+q00kYUib0ZkhpIDozMr9WZFsv2iHNbJTPojlnWoLddZIDnJMxhGI7sPpvegYP9JuKBW92WwcOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762029594; c=relaxed/simple;
	bh=BNzesHZCAcRjLvIB0Q7u8ugDt0GGxUxRWBvKZT9QwXE=;
	h=To:Subject:From:Message-Id:Date; b=GV6vE7CnXxGBcbqj4xVgdBCm/LVS34oUNb73ybC73shGsV93rZJv5MWBspO62Icvn+XK4haqaafEsLTewSHXo9x7lpOmpls/hkYM0pJ00zh25Q83UF0wzt7275dzlPPoIRvojECpecsuwCdecBG/7jVJu0AHpj3ta4+Um00LJGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrTbbJXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrTbbJXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD54C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762029593;
	bh=BNzesHZCAcRjLvIB0Q7u8ugDt0GGxUxRWBvKZT9QwXE=;
	h=To:Subject:From:Date:From;
	b=ZrTbbJXqqsv0NC6ioE0jGFTU0IGaJvI3KoVTEeyZme/oE6TM8Z8IMjBXIrElQYOde
	 asA7cMK2U5bEdKCYEs6LJaiXhe3ppee6AOcaKg7VEOLCwWx+c3lUt/YE2k9R1trcyt
	 smDygYuSoT0qFeerbttIIGw8gXW3ZkIvBXmMrXGUnjRcJqY7Vr5UddMFP8Ql/A049P
	 aXlmSx8Ted2G1mnuLT+QT04cv1M5sNwV/7gd+yjImDIx+Guj2rjfI1xDmu4tPHcvZO
	 Lmx1khmDejRKkIvUOTQ8W25gMmMy1+/+oiwrS+uYYsqwiDWPStT8LCT1kaKmg9g69H
	 4YpaLJp8mJU8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94671CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202959358.18279.11941219488415552954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f26d621fb47d7128ed7657b9ab1fe4760624391b8dd0b9eeee2f02f19bacc429
Date: Sat, 01 Nov 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762029593
