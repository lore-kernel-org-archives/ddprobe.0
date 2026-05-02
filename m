Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F91128150F
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777726654; cv=none; b=Vz2MbjoD9AHxIckvQIPqnKEZjgdEBahzt2h9Z2Y1JQUFRgB6sKPYqHLh9YRrMp6DMd6ax544pw0cZrq5HpecCAAcVhBcWSIX+garaBDdixNWKoQSB7PBSA52JoL4HJ1NM0Qqpjbhf/Q8CQEDC1UCHKhl+hvcSJOoqCvpyJQ1ePY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777726654; c=relaxed/simple;
	bh=Tmo0+1o06kFcPxfzEneWdL4sapTxKlqxmuNbN3M9aW4=;
	h=To:Subject:From:Message-Id:Date; b=HtbW9gX59imbArlqmYpCncv0ogWqKfLD8B5f90ADitBsvW6aKEzHSmYxihQSKiWY7xjrp83gVW9hpysEoHAtW6Az1/eyKosl7OPJ1F0XCvlo/1IxO8o4ZAFN6hTzZSOFdhIqGPC6iEnTKnajDqcEkuFXTalV8NadV+BTlut8aOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHt/+c3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHt/+c3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8715C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777726653;
	bh=Tmo0+1o06kFcPxfzEneWdL4sapTxKlqxmuNbN3M9aW4=;
	h=To:Subject:From:Date:From;
	b=UHt/+c3AciPiBB+lO/83kM7Fiiq6JcRMDVG+RWJvYUvBrats1SGfvqD1A2deDwJ0p
	 8qCHZODgzyR8ZvbPBdvfcTodbRaExsZXLbH008FU0ZT//9KQZ+kL/GDalhHjqI5Ofw
	 nOqfmweIZmIpM4SO0LmwUvetJehfpG2zJuoVLPlxnD5lZifU4SGFbYTLwlGmyGNY/g
	 yn7vyGEEzDF6fInovna1QujgkWAUKQMYJEDngl+iRT88MRaWWgEgY0PsGK798v28rf
	 rPXpWuUYyn3HSol6sqtsh1CDe+sewusWmOc2qZgTd2xAfebVW9rhqEulOyfQqr10os
	 wf++i6edcvtjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1CECD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772665368.681.2313079760196008863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb02b9ee40f3e3b486afbfe40ba436dbe202c96072b29236360cefe31d474cb6
Date: Sat, 02 May 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777726653
