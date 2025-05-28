Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D4228B7EC
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748444994; cv=none; b=XTzw3sXR5CAQiIzs6lJa33JQLw6ZO1L/awWQGIKtMXYV3OyLS+BZCDl1NF/nr6g3BlEl/UxSfnEE9mD3psfDCkZxcP1beL9kLnF50zXkZnVoaEY0R4zrlc74cEnr0U3KQ1C5+Ei6RbVe0SoNtv3lDuUVf6mX0AmoBZfToKu9Ya0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748444994; c=relaxed/simple;
	bh=NgcCZ2n3+OgzHEOftH0YuNfYxtf9TXrVupPHSdWAllg=;
	h=To:Subject:From:Message-Id:Date; b=LehcK4rIEaff4zkLgtId/U9iTaCodhHTMXucDifpRsHQLjtaX8sSEn4aqEBD+lMb4/d6JF8+N4K2NPETfUKSXBCnU79RHv5oRSfcqek9VySXLHAy0R9kAISq7N9NovaVdNzH5kho6K6b7rT2ySYycp7mRQmnlkpmk+Cog3aRUcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldJEaJWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldJEaJWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0024C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748444993;
	bh=NgcCZ2n3+OgzHEOftH0YuNfYxtf9TXrVupPHSdWAllg=;
	h=To:Subject:From:Date:From;
	b=ldJEaJWouPpaLSYSVt5mAKkx4V3swVCicKsvgC7+VO/ClPrup30cUkYQB54PzEwEj
	 ULDnLnhYgCOgf75Vv8W4B1kOgwsYl3i7f3Zgq4bzcZufbgG+EKlLOrDhTkminYDgho
	 ugnyskTL9VqnHHTQIXOSCTIA7amqt9ri+9JSZA4qpqXcOmTcPaI6fEGmKSbiavO2P2
	 hVz08DE5lusvchq2a9m/TOvEnE/pJgH0/iFQSanIL08NcZPwUkZND0Nr4ZpQkOiIgc
	 SjMvLfCRbrDjbsf03h4yHdDcPpQcLJm+e59N3kdt+3gYAp7ArNfLKDZXr3q3VI3x/J
	 FNDB22TjCNCiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA41C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844499357.17612.17774813689282459227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb4ba19fa0bc63d798759a3b4ab58f77cb25cd7d97ffd4bf483cf00546856f9
Date: Wed, 28 May 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748444993
