Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BB736494C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788213634; cv=none; b=bDN4GG94ZpN9XOmgjiyjoAWT1VnfIF15NVQv7IQUVaBUmw9b1yGBNZNKwG4HuOiucwWoLWJ4Xg1r2d2gcD1U3z9hotQINYQ8HFnN1iC/lNAZwV4CXEmu6ObBLu9BUL15hdTul1nlDr8Prosgu9HiTWH1TRIFh3DDaMLylSSopLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788213634; c=relaxed/simple;
	bh=FL4/mLsVKkXgGvlB8WwddQqJG3OMzNWE7eO1TgVG9k4=;
	h=To:Subject:From:Message-Id:Date; b=VE3oZ+STTFKTLywytcd0nZ37c1M25xwWleT+5kkSYceA/95S9TUzJHrD2OrHZH9m2TT0D/x/nWYQTn//lwtLoDoba2qUtzkGnhQlmV/krA43mnjtP622lIK8IlIJWRqf476Y/Pq5i4K7rCsk/1XawLDCRpwqKI1wpdk0RlSJ0I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z25gHc4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z25gHc4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5184C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788213633;
	bh=FL4/mLsVKkXgGvlB8WwddQqJG3OMzNWE7eO1TgVG9k4=;
	h=To:Subject:From:Date:From;
	b=Z25gHc4FNrZoXh7/tHk/k7gZ74evpEozSeQm9xrDlT4u4wefYxfCWg6mEC7oXc//h
	 U1l0DrPc1c+/eqNwmp9xAzAdTIuK0GzNwJ3gJTJza9DISofFvG8ATO7AUiyadb3mbP
	 RFex5fQqiSsyUG/CGGfS/YITQnO4og09h8YSVbpg7J1ZkHXzmWnXe4E0OocPEXDpLQ
	 gLjszSzm9vGVtPrJH/1/MxXU6eoIkqk34NkFjYQCDpncBdpo2r7A97LmegNVBJOjL7
	 09tD8miLsrYKb2DWJUFsPT3kAKzExMRDb9TqueelIFtFJ0/LQYpZgq2caJzO81YSCN
	 3i9WoDWOJnV3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4DAC61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821363368.16741.1952749937960805912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e52ffca212bcac9e675f762b801f7ef4f9d1fd08043bc980d26c760f63fa690
Date: Mon, 31 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788213633
