Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C71A4A0909
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788437434; cv=none; b=h/FkJoZPpGDjkqAR1a0yIPTzTNNLQK2wtlI34bLWIgqBMlvkt6VDACOjiazbjxuyOM89OOeTh1cqVzinJEx4uviqQ+7A3E/PF2EUcRnkJQOi9OsnxnULB6+EMFVc5DsheHg1Fpebk+S0vCtwsrcZWOUjStGa7nvYENPzfvlvXQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788437434; c=relaxed/simple;
	bh=s41righAVH6+njdRelVFCb/jb8ku5djwuNP+RAz7c0U=;
	h=To:Subject:From:Message-Id:Date; b=LoJcCLt/7k64o32/3XlI63aaXY3pzbtTwzvf046j9IGRBZ1rQyiqVicPQRN+ZAkbmY96PBVczxtE+4k3jc5drO+90d5AyD7PwvOyMx9jj2LAkqqRXATeOaa+NBJUHIILH9Tu43AmNK/jN24bQ9wXABzsWOhlbi1jWVZt0k1pGd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRL+iawu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRL+iawu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E2BC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788437433;
	bh=s41righAVH6+njdRelVFCb/jb8ku5djwuNP+RAz7c0U=;
	h=To:Subject:From:Date:From;
	b=aRL+iawujwrahur7UbSdF8VTc3brnHIESeJsHpX0GGt4fZybtUKImB6Jdvfd4WjEW
	 tTAweMLRr4E2jnWxUA1+F5xWdo0TGhPkjUjtzV4GvQu6o9jvLQF02ykJ9SWAO8hZm/
	 KqhZXecN1aVHXULcgLdoEf2kv0Tm45J5+azJDpU86pvaA8ov++ORqk95r3ZzrhwEzB
	 E7K1Sw0VOKudJg4BnYROggkaQVsS9wXpyG+DCjsSyhEkmxNVM3ZGi4MLaawwcq9Ayg
	 GoOYjfDVbVn3z0D4Yk03m2obx/gy14HIXOLbDzcpPX/e/B1ViPxNAbkRVyiedXU1Mf
	 BZkCWWykoL4fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63A3C624DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843743373.24500.505648688395180466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f56db36450d2f1f77c6568e4d71722f326357c0eaa645e4d4dcb9232c64b4d
Date: Thu, 03 Sep 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788437433
