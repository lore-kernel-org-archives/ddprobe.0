Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B5F2BEC30
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755800994; cv=none; b=bTQHJwSwYTM5KavXKhQHewWY6MyfvZ23PJc6/nsFgs558XFb5Xcqz3m9hBhF1oeT815JmvYSTLuw1ii+iSsxAQvjPgD3ljMxjt5BBG4s7TyULLNReR+REO0HJngArCKRULiy4v6XPwFI4N1s6jslih3xG0bP6YJ6CB0bpdM4PO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755800994; c=relaxed/simple;
	bh=jRwhFh8XWzqJSzdRY9vUSXVhLQP0i/QGjp4SWLkbqF0=;
	h=To:Subject:From:Message-Id:Date; b=FEvmLE6ShlkjJuDIB9jwzJ0ZNdws/34B8TMLg0nCpo9O0r5pRfiypNga0I34+Z8ROomCXmrgsV403Gev94dXg8+u1NiI+F6rul9Bq9Ez1CvOFhxU47t9Z7pGjrDxiGsi2k/oR1+kfAcVknruOYw6kax10+Q0OPDSOVNs2pY8jZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AER7PitC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AER7PitC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A253FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755800993;
	bh=jRwhFh8XWzqJSzdRY9vUSXVhLQP0i/QGjp4SWLkbqF0=;
	h=To:Subject:From:Date:From;
	b=AER7PitCMBwn1xPF9/HHfRe2MAt/Un7SZpOm1+1iW9hqU9p0HvU93l+gU8+tDTTFl
	 NTEOqLxpp9elxsQzZsAYX/yGRMHdrtmA2soJrcB62gAPiAHOnwJp4cnZPtZa9GpwDY
	 UutfIYP54juek3YPC/i2ivJGwErvqB70jv8RhgFNk78RGmQY4DtILj2NNE+RfSUbuE
	 Ml1aNhXsoYlAc5WcHILDHF6YvcMO+GdKJdrVFFRSVh23j9FO8JoUl4XQvsn6FpiD6v
	 WlWy9QPqRJKbyL1k/TQlFjOgmkeJ8bYubAx8ye3SUypwd9VGZaqYE6v+rddbuJgbkM
	 FenEpXc+kLyAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE24CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580099357.24600.8910047890904064331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425628809fad96cefe1fd0878bad4258e31a4e08f08ef4ac79856cd1795e6a06
Date: Thu, 21 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755800993
