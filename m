Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96265158867
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 17:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713978083; cv=none; b=V5Il3BbQ9PY5P/8QbP1ZBETooIdSPf6lhyBar1IsEUbU+cUgb8B5RPWWtC/NVGOhKRri/zLWmsIT85FouEH5/q7TQ/HdQtvsxKJjWmB0+cSndWXymhuyZnSDxXmkAMmtfss7h/wcDA4Oulha5jK1It7/zzDQ48dM53x3H3UNNqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713978083; c=relaxed/simple;
	bh=UQJUnnm6zUuAkoceMQus4MXyDEiqQClgOvETqVsl1ec=;
	h=To:Subject:From:Message-Id:Date; b=iff4c1woZCoa9s9iaHx3aayTBRkjtecX5RHZRZC2lv0ORJAkT9PTea++80V8Y94TXHtqIlOSaOKmNogmldeechGqL6PhFquc2gvT+HYL9h0A9vj38/SZt2K+iW0I+QTH224rwtkjVlVkdqaO7l4DTxr+5Oues5e5t1iFBLCKsmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YG93OHmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YG93OHmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 23A9AC113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 17:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713978083;
	bh=UQJUnnm6zUuAkoceMQus4MXyDEiqQClgOvETqVsl1ec=;
	h=To:Subject:From:Date:From;
	b=YG93OHmCSLwnjT4eZrMIHTz3aPVYLw1GFRU4eZoNh0xG14mBJERPQ1AU/DDwB90qg
	 pyM+zGrg0fexrWT21sv8qZUs3+QYeftOMaIxOLtbbY+CEoRP8y7o9cUCqgrU2QqQxF
	 uXg0n8W9Sde5mm+6WkF3gur4wtO4AvrGGMjrhT4yYlhm59mId5FlKXvLH+UApae7Nt
	 d5twkKNs33j7WejTSCUGiViQUrKf9O14TD0E3bm730cW5JqsyBHkN39PLa54IrExCK
	 /cGh+YKvjxMdRNB+rJ6anQMoEHAyl+bwcvPa53/W/RyyJh6A1pBgAimlLz8AGE+JCh
	 mVFYbaOhBqUUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8012C25B73
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 17:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171397808285.20277.8255432988428882075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8040c76ad2fd6c606c65b94b87618f62390ad46ef85ed3525c6a5ccd0d392b
Date: Wed, 24 Apr 2024 17:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713978082
