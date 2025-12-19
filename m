Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB2A4D8CE
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766102634; cv=none; b=kmJ424A3eF2TTt91kJuqFeV0IwItdGxFYVYfIuWzjIwInIXhcKLwJKfTVzM76txiLY/wY5Vwm8bxrkWdmcimcqGery7BJdJgxCqfb2b0r25yeUC5Unkp5J55308hlGdrQXrH6fs5R2ZEDD1NVbGC5CATUymDW7OwI8Bx/idixsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766102634; c=relaxed/simple;
	bh=bCV7KgHoxQgOjnRqqHhnOEX+nKlU1hVz629cc3duZuU=;
	h=To:Subject:From:Message-Id:Date; b=U0+KTlmZl33SJW9i1wFwFZHr7I5q+iwwnb/VJGNOz5dP1v8jUTzsOylZNpaBbY7CR47i/J4dP4MwdBlhyFD6Sk5EVN74OkEvilghhkvAm0jw2SNqS2ylFda/Tht+H2ywV/rR1slkdEOmXwLDXzxGV8/vyXG9dRmMhyudW4VuQtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwkfoqLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwkfoqLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2472C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766102633;
	bh=bCV7KgHoxQgOjnRqqHhnOEX+nKlU1hVz629cc3duZuU=;
	h=To:Subject:From:Date:From;
	b=RwkfoqLkrtEavo0KNO41ljvLLIBZXD00OC9hpk/x3NACpm/qVU0UGaflzcsr29ofZ
	 +AAm0iKaHy+55xwW53ZPclTr2JtJd55G0MZ/tLl4kJYRPQAQITMwr/hBUOi3hmB2bq
	 Zw5qjy2ithLbfksyG2XiSl8SaqAgsV0HtVX+HqtAPr9lG2M4EmS3EnIibJ0utZb6vd
	 cdYlQUfCqTnY2e23xRTBPZw3+VX/d/cSxRocgxIYLF+/IPi2o3wXIHNpGfNaOAyZUV
	 8J2rc2uf8lECm62fpWiaHVnk2ccnnQumuZ6R3O/qQ5X+xXKX5oJ9wRJ/+aGrh8ED/L
	 bRUe8a0oB+JEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93659D711CD
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610263358.20290.13643574914018790845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1677bb5e0d49c01d30499a400bc06a8d915032c5ba9e6eee42faac4393289ccf
Date: Fri, 19 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766102633
