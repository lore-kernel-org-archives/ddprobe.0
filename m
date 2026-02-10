Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ABB2F49F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770752634; cv=none; b=NlmwOOges2mdUIcKHCijvWeAmDQYJG47QGj0nQgyk3K5JE0+BB7ad7n9BCQLxfIDgzoVV7k1fsaY7kb8n0432cXu8ZFXf7yf8lzzJV3mjFdgRPHQwC6XwxxOpeZ2HOmc4yyhnZT8drmDggFRwB1Zb8vje32F1HQmOCstWlJaJfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770752634; c=relaxed/simple;
	bh=wkfVh3GVoceIJOztyZA36nd2m5c23TCdLOu9fyOSEgc=;
	h=To:Subject:From:Message-Id:Date; b=TcsqQPKi071GELWdc/2wTIUHi2e0yZcm6i3v878NfEYEK6zg4avkNXU5fjMZlVd6OhrCRCDPr2sT4AY0Db22J4dMnevKKkWn/21YqiHmYBm5jnAoWDLqq105wmB2OzGzWvvnmCsYvvTHsl9BY4o446AgS1RzQLYhXmdruWCTpo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6IFfLXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6IFfLXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E90C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770752633;
	bh=wkfVh3GVoceIJOztyZA36nd2m5c23TCdLOu9fyOSEgc=;
	h=To:Subject:From:Date:From;
	b=c6IFfLXLgWZnGV2L55wA/3J+Ereyh+WjzTRmXQM5cI9oGDR6tcssb0Xu0vk7qZ7I4
	 G2iQAObEhYZxVLnkIEMk63HmTINWr3N06s+pLg7N9mXhrgVpDs0/QsKxShvLlhVrT+
	 3ShpqTR13zRUE33A4O+D5a+EvNgnQjJ8hBcPlAJSlc8smT44Hx5/0GoPF/XcT3P0qM
	 lMAavnFhM8z697HZWpsuE1uLmzKdODSlmv9Q6GBBS+ESsxqs260/VGYz/8Hhy/+WnZ
	 efzymDRCzO526BRHV+/Il8bc4mOhNNQu4prugp1hWqQrlktfxYpdmOfCJzZjgO143C
	 wG9tvekVgcDjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DEEEEB2705
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075263362.6710.17953756725118824963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276ce955ef9b6ac52cab792bdc72381981197d2314e3d29dfaf2de8a1c7514fc
Date: Tue, 10 Feb 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770752633
