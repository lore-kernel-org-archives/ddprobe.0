Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F078135DA41
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772795694; cv=none; b=hVev7zY+c2MLDwsNxq0jsA9r4PLWTh0qB0xwi4ON2M/49BrtWNCY99EFrVwcYOEmJCkyhgW2lv04P6N71b0UiaH2JHGQqoREPLF+K2Z75ynpk3Lz8Tu+eCxEG/v9KhAEeHwXBZEUjuiQJP6uARTl289nSMUQFMOMF6rt7WvaSUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772795694; c=relaxed/simple;
	bh=yH7wV6vbPm4I8JcNTxLIyiJzdrylM94YDHCROdGuNgs=;
	h=To:Subject:From:Message-Id:Date; b=qBbttekch6cLV75Qj+8ej28W79PreWHTT3khVfv14mNSCox7d+Y5+itJ4xALCY4ApNR32MEExZMlDatc/P/THoMI5EKrUWbr64VpiWSGgopzhzYgEIJ14WJR9b7P1HDP0f1VgsaJNp38DQLb5EHIrVIRouZjymYLqKvUMYMbFls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAi24xf8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAi24xf8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772795693;
	bh=yH7wV6vbPm4I8JcNTxLIyiJzdrylM94YDHCROdGuNgs=;
	h=To:Subject:From:Date:From;
	b=SAi24xf8CI7rsWlw94LYr/JeEAtG5bhXMnqmolwFo0bujzLV5GBYwcmZcYQjpVKd1
	 riGWuq0LeXXU1Wlpn28Gke6lWc5LkZFZo438UGXz1Z9qGd6SyddGM2iKw+BDxxoWCO
	 db7PEmTFBz83w72BiNzy8DFj8xgU7cQ1HBTV8lisgvhdEiHLdGO9SC6EiN59Z+/RYS
	 F7qvmMi+yg7g8CmSBm0GMuz0WkBO4zS1jOeTib+KjkYdl0jR7pk+AAajfy5QHLFi10
	 2BzSlruibiC6C4PkjPBzMpPNE1B8nD08rtEXQ869qhL8TQu84Q3Bb/ysdOpzLEqsG7
	 gHYNQ9hlKJoYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DBBF01827
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177279569359.5675.10157429248367825412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b6a492798fc1dcd701aed743c718d40201f3e32ff420e149068eaab2486e70
Date: Fri, 06 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772795693
