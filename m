Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FF6A23
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727013354; cv=none; b=bOUd2QcwQsrR6ufbixMHU2SbvM56QE+Yv26WDdZEU48mdRMPaDYL3NdhJsmz8JqoJsPJBEs67KanYokJXZ6+BgprHcerNjkkx8mdl1gbRHqtC9OuMefiheYPlfNojHLYjT3dPf80sfZhfWf4gONlmn99d3+9FS9n6qTbxaMNF5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727013354; c=relaxed/simple;
	bh=eIWSmP4fZGvmidquTRnpAjiiHISwfNOR0uY80oq0PPA=;
	h=To:Subject:From:Message-Id:Date; b=NHazzFbjGwESgKcYk1T9vMkiMRx4xivK1Iszwn+qSj2YhlR57cn0iJWB3XtqZ23zD3nE9Q1UgfUA7RIVo5MFnw7s8Tiw6ojrGrEfv1cZQTjlOOcNhGVI3yVT742u/5sIErDEXQCjz6R8NXCFdJEsNwUthiV5hJh1Riy7cuGJzcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIvZ43Q2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIvZ43Q2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7654C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727013353;
	bh=eIWSmP4fZGvmidquTRnpAjiiHISwfNOR0uY80oq0PPA=;
	h=To:Subject:From:Date:From;
	b=fIvZ43Q2lypjOdQvmnKsW4D1+VT/sVkkahLkCmsgEC7a3tTMMAGegR7Alx+mHYlNw
	 qfUf7JfZB5ARACWDxFwqGpIeQspEHU6eoVA5ZpIB38sjj+yaCLe2h/fR2sfE5TpZn3
	 dK6yFIGvq4SlOPIJmX+UVfrS5HFdJkgug/QeTNUV8tUgVfNbt6YxOIzLy4kW1M+DSz
	 IC1aye6CYkq+qqTa6hwhXd3bkeRWGmF6U3RPFBTDew5JqsjkXlUa9gij5tAsEYAIOz
	 TLY9tCqHzE6dnFgRqef3Al7w/8md1Gj246r3oCbWzMeD4FJJ6CbkYCy9CIeCnsUH0Q
	 /ZE3jTyU1wnYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA04CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172701335368.22106.7519390350883125257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0276d78d2dd4656a485b41c033ada70c3094b0ce6bc4337ad047ed95aa421d66
Date: Sun, 22 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727013353
