Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AC31DED49
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787476834; cv=none; b=NInVLXXBzW3XAe1jcVoV553lGmHAKFN3f6eoNw/tnqaV/DHcb9Bq23bkTvMNrfY6M+8tBU0rTxZsUfdEHJlF/JVdCofmVFu7juEtnRVbgOfVcT5vEHZXsPMKo60rfWLUi8vBtx9J2tPIILVhA+Lcq8OSvchEd3IBkG0xJLfnp9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787476834; c=relaxed/simple;
	bh=sLIUYGB7K7jgga4W/oPhWgAsDNybtkHRMPJs68BRtm8=;
	h=To:Subject:From:Message-Id:Date; b=boqltcE6MHTAKm9LKGyDM58zjuHz54J016aZiWIBVeJIVDZGfepqSt8R7NGVEost21XSgZmCMQ+Aycci+eup4Df2V8xK02PwN6LgmMVyxduZ5Ql9L2XS2QFGX1ZatJACuXCCbXizWCvR0EwrlRsspKyfrKEtc0nMTL4TLf+10MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5l+mnkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5l+mnkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7154C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787476833;
	bh=sLIUYGB7K7jgga4W/oPhWgAsDNybtkHRMPJs68BRtm8=;
	h=To:Subject:From:Date:From;
	b=V5l+mnkdY2lr2ahfEiQP/9DYz1cJKIdTJmjvp8rTVnwC8LP17L8wV1c9DfW0lh6rX
	 xaL1Slfx+skEkD9WEalInMHDliqNw7AYRwX1ycpI+luTZK4AI7bk/UswWSVvx4DHgQ
	 r1r4TXfngpCcM5RFhzuYB1WrTEvOiSqzHO5Db7AnmtcPPuDjqOnTfXvjQqjzMQjMK1
	 5fXbSHXamzSaAenlym92Cl96aiqDqFRLdr/+iX4ZvAdTgY4hJcRxRNcLWQYFY2utZ3
	 7ve4VnVlQwJ2frh+qJ7ztchFUtCaPii/zwyS8kD0Q7b45ZuWrIAUnfcH1F2QYmUzzE
	 7DWEggoifhlNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB030C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178747683369.30940.16218858044184044357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcbe9b1a71e4291313156105f352eea7bdac66e4db1fba752725042ca77ec563
Date: Sun, 23 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787476833
