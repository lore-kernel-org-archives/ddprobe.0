Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241D31C01
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777145854; cv=none; b=nsC08fZ7rjJZ1AIm4mMV8YkgV1TgNMMCLkK/0AaLtNalYFH7RoueCQWhqghqi4hj3K4pD1YOC+M3Gx11ateZXqEizEef8R+sm1+WaJNg3fJIF1c+BRNrb7o73hCcJ7IMWqUgIlZWasHQPh7+cT72SHD8IeTDdz1T0TgtDLvZCLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777145854; c=relaxed/simple;
	bh=2TwK1xdNi2vl50mstZaVTnOjj172H08+VZ/12ulywCk=;
	h=To:Subject:From:Message-Id:Date; b=SobKjEyBw866n420LIt30PDOeYD6VnjdXLRugCOAIdEkObvrZjaZAkNXzHie8KRWosWMKV8g2cWW1NcvjVXEnQ8X7VqU8K3doVhMzaPF4MiWcKtHQ+TMHhiNW+bCz68o8h5wt8bKLz13KVP/cpwPRWMPzwztWE4oM6swBoGc8Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nj1wwufF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nj1wwufF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0434C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777145853;
	bh=2TwK1xdNi2vl50mstZaVTnOjj172H08+VZ/12ulywCk=;
	h=To:Subject:From:Date:From;
	b=Nj1wwufFk9tAZ+MN7V2vctajypxGspqU68+vtNMDpm6WKGH8/zAh8QEKxs03v8Sfv
	 lh8X1+hZUo+cMRs2FIgKx+oylqZSu75YiXj3GxF/h9AFItgsYL/fJlQtuY5PVQQ/N4
	 CP6G3u+dYrnOTfoCnJai2+/jK5+2UM+IMpCW/6b8uEXQIVfmTmPvBxlhBHu4oGIEA+
	 ptazn+Ic1WxzfvuxnV5BCbQRsaN9FMwjj8SJ6wUbLd88zmQGWGnPD7Lc3nbt+oYKUp
	 Pwg1IHZflgNK6u6wH1V+V3GUadvoYSZStcLRGzXxLKk9eG0ijX3f1PIpliDqwF6VuN
	 NZRIonP1FwBjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF231FF885C
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177714585368.12347.15065231748864253317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b352705754d6d3dcf8d291e5e86c9a779900f87509e1c97b2c33d06a984a7a
Date: Sat, 25 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777145853
