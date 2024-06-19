Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE5517C8B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718807363; cv=none; b=spVIfVFj3NeMEf2+9zEilAPEy9NfZ+8ZawsCNzbX1Ya37/UXTljVgvH30FOVsBfqUFEIYLJghvI5/EpjVW0nAxKilH7vQo9J/jzCIRsBMX8uxB45VDjvWj2//IJfrRbg5lcmSU06CkZ1nIRCRopVRzO4wYKuBrJ2G3EnxSWX9Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718807363; c=relaxed/simple;
	bh=wWIgKmV54Hierx6g5CDKee1XsKvtnHG6nvHxe24nhUw=;
	h=To:Subject:From:Message-Id:Date; b=gqa60wUussz8Or65biZzPrZ92vwP4IN6Yn+zA1yyof0ygsgjCsID9vlA35AgQIVCD/0XRCU0E+CjHj3EGHVYl8tt4Sk0i6cR5ud14G9+9ezbvgmlim368nVo5K7O0CdW1nANaQcpm/riV/r1KbCH9umx+YhN424aWYVPKPwuN+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9umk8JZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9umk8JZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2C3C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718807362;
	bh=wWIgKmV54Hierx6g5CDKee1XsKvtnHG6nvHxe24nhUw=;
	h=To:Subject:From:Date:From;
	b=t9umk8JZcUc1O06WogF+rRDepGwGcaUBUYRUoOATxtwreLz3SHBlYuPx/pQIkufEl
	 5ryw6mxrNAT8mE6jvRN4P6PZE0S8Rohe/eAohZA4XOE8B5FZJCdtSym/SnxBgBzXV3
	 EkzQMslBCwMW/27Mkcg9bY/7hknOnG8bflr6MKfRH2cy9pBEy1skf7zF8rc91v1EnM
	 PrTvT9+Ns0BH8lrKVPk1NB2K23XG13jEdtKYagE+yZjQcB0q5rG1vGiKellg6arI+k
	 fDQUtb5SBjEQNOW7ZnVeCGIXPtyxSdzC5vKb23E+oF/w6I83tjpz/LdxxMsWYFhLBL
	 yJMlYLFSG02Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E74C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 14:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880736278.1413.7248999370359479681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa49d293a20a500f526ae1644bdad4750fec1e5882dc1d9afc8aa2b2651fd6c
Date: Wed, 19 Jun 2024 14:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718807362
