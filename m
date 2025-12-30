Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F001B81CA
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767123234; cv=none; b=HFElSeezP+LMvia0nCioeHDoD/QMOQIu0YJEacqs5uLnyWMa0RhO0QwERlqxFaV2/LYrXgDXUcZjvlK7EmxZMelz9WHY+i9VFUG2zrq5BgX/Z5+jaR6MaZYx4rwTuWK+JSsLHUA6QhNY76+tw/Hb5Xn0ibxOrCkf6lt1XgXSIIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767123234; c=relaxed/simple;
	bh=Yj9/oJpqcnEieRR8g6m06WcwcimkofQSvmBEgIkky8U=;
	h=To:Subject:From:Message-Id:Date; b=FoFooyYpJrCdb2bWVwgKfrKLtqQWF4g9UUPP/fY5PzywqukA9/JuQV6SxcMefIVHlyWQ2AfBDxXbniFiLrPlgR/jz3Fk3UmMzhXo1+bMh6oX9jI6OYVCThDJcfD5vMiMYbxNwscdf7tEWEldpnk9FT8BW52ODcWOp+3I3UMJRGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIlpD3AO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIlpD3AO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF94C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767123233;
	bh=Yj9/oJpqcnEieRR8g6m06WcwcimkofQSvmBEgIkky8U=;
	h=To:Subject:From:Date:From;
	b=JIlpD3AOZPkOKHqCRu88/RFhf4nFsXbAOpwzAklxTfpdaI7TOsqubaWNtoQ0hOeO1
	 qFajEosX0vVySPABxoO1hPumNlMaXWMYgN9eD+gWV+refFt31ozCELWeEnlDF4lFSC
	 EfNwLf5g+86z2FxHd0xNM7GmA46clpevu2JFD75quD7MMtWR36qwV3Icaan15bvgSV
	 O/YVDuilukLan0JIQgerNOVW3zXwhzyN+sEn1MYFLb9qErnmXCgpvzZm/Ehhq/h1ym
	 IJ+mEpKGdWsS3KhvmILanYPEAe7+XWH5z2w+ipHbMddIvYoCDlVAiSd+m5rBgwuGsy
	 6rkIZEHLQ7cTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E775EE499A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712323357.28105.17135965995611652173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78ff48e5a389523ded86bc8fac6340ca761db856beda504e6b2cb3de24e2d95
Date: Tue, 30 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767123233
