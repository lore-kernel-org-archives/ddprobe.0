Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1308354763
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767967434; cv=none; b=QHJg6Thn4oID/Hg2d17XyPnWVRNmZul2rA+Nxa6wPJE7ovSuVOkSTUA6bvdNPb8PlpMv5YjnqwemefXF8qRWaY/zc1Lp1fLYGiSC3nf9N6815Xovmyeq3cOCOqgk4xfLRQ/2GzjwpWhy+stYoidmVVrLsZqgRuie6DH1oWdp6zM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767967434; c=relaxed/simple;
	bh=UBH1ywlmzNsdglVyCxy+xMsP5iyxKFHAYHHj7i6MF1Y=;
	h=To:Subject:From:Message-Id:Date; b=M2zhfSZg1pMToM69EhOoywhS3rCAYuwCvsinKmn9uvn7xx3hgPB9pP/GHLWUv3fn1emzYvv0hFWchwskl+m7mnR6XaIgV7wjs7nDaIB9zEJhfs5Ce6IN0vMMiWecbRTjw+TMDrPHrNa1tLfEAWxg4nvzpoS0KNkcR8cOfOOuhY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It23Sxsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It23Sxsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10A8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767967433;
	bh=UBH1ywlmzNsdglVyCxy+xMsP5iyxKFHAYHHj7i6MF1Y=;
	h=To:Subject:From:Date:From;
	b=It23SxsfML2wt7BtCq+4LjDJoMcT3EXoVcQ7OVAeyG/6Qa15qgogGJ1vbJb1Oyaa0
	 ogsaloEYM2xJF9eApwTRv3sBk4/VARFQqRF13bk5GyfK2Xje06ywDdimXhIkENGEmh
	 jI+GCjjaVe3Dsk5/xyvBrraMp9IzmOfHR6i7pAPFrYXIU/0NSTjc/jY9/zau+ikQA3
	 0mSiENYFb7Xe6PtlC6Og/wnGYWTH/ptlfBTXQnlu7zKeRETycGymbZMLNoo2xWgxag
	 Iyw5QjrMQveff8MnqxFOFfLJVqAYR65EtlUE8eFczj/l0lL95T3gZJXA0EPWiNy6kh
	 tbhPfQbjrXzzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E97D1A631
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796743362.20927.3352386973676374841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f2143faa9cc441dfc53d14384c9fcb14fa151cdbea8dd4a0e499ecd4998c3e
Date: Fri, 09 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767967433
