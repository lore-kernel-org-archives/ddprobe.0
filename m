Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F7F18E361
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724166354; cv=none; b=gnEwspGgjFX2wU03goWUoz9BXVGuvJYnj6Vj/o3XVUqX1fwLQTBOIU5Ar2ckkJ0rXJi1hzgAbM9EkCg5iF9eHOkqvZ9NrCMevDFNv4DB09HzoRYdO5O7EmXw0fEbHyJ7NsIyZ3lfNUpigC0BeuoGumc+Uzxq5buegeeAVDz94Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724166354; c=relaxed/simple;
	bh=VxLgXsnIXxQIXsIUhQbDUtlGS0028CXHE5XwN6GrrdQ=;
	h=To:Subject:From:Message-Id:Date; b=ZTYmzJdBy7RZYw9mvKQ0aijhjuuussj+uts5Q/V5UeNPBNXp8Hh1J6r0O6YSUJbANlxkqU4ljDjLJusGMurAiGOcA4AconYcYqnOyU3HBxt0ZRLauJ9hZlQqSphSOHalN+tJione60DfVa5O9wGamphvcYnNU4TRj6b3Cw+449Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBXADgF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBXADgF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EA0C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724166353;
	bh=VxLgXsnIXxQIXsIUhQbDUtlGS0028CXHE5XwN6GrrdQ=;
	h=To:Subject:From:Date:From;
	b=KBXADgF8q+uXQ86Fai9nnD4GvKnr+RjDV5PaO7RmMpI/LnUUIcPsS2MJgT5USvoR/
	 X/PW3IWjVwql1VCJyWDKoletHO56slfJu2mYdWv9N4q14eLI0t9+gCB1N5r50o3Tci
	 I7vXvq4JZLHXOxDVq27aeuRewbkzasvkt6kVRdxQIa5zG6ZvKO+wpI28LSTdU2WWew
	 GPbPsvqtJg18xg5rXfGxb6CUPCSuCUzyf41Gm9KuG7AQC4VH8KRnrEU8l/YfUzb5lP
	 DlrNvEbZ4Rdn7CKJlGmnS8zKWw3DLz77ydvxiSu+tTXqO3SaCPHINJQQocmycjDWab
	 v6MbHx9OF4HKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F8BC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172416635363.25261.888303606777867753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d0a3c8cc397e448368133a550d341069515d05f8e9a628d52519222df1269b
Date: Tue, 20 Aug 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724166353
