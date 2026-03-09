Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0544038F245
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773095094; cv=none; b=uoR0OeJG9BzQBc+SjGsI31UoaqPlq0vyv4GepqECbwd4W0BDFpEe5NfVkfI6PTyQhOyaTAGVVtrSQsZxBHZ0XzoLqibNO1MBUfHjJk/BFPKWItmV7WVvsknOj+9WMGaORSMhFqmPkN0okc41ufCYmj0EXijjfnJn6N8Em9W8e+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773095094; c=relaxed/simple;
	bh=xgP5ZXddtb6dEInETuRCvnt3rtpahxb2wzHEpDHMJV4=;
	h=To:Subject:From:Message-Id:Date; b=S09OWZtKpnvxeVDueiRn7INbYk87HmIcQx/bSjI7PXFl2Jyv3d56RN27Veb04J6lU9o6TpaXpcGN+/W2xJOHKEGzECB2IrqE1OC1yyWxqA/fqF/fCucdyv3WLz+q3cMiGDE8hl36jGmnYxkECKG7CcDrcSlA8IGw5QpQmP0nJE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUG4gSZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUG4gSZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1262C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773095093;
	bh=xgP5ZXddtb6dEInETuRCvnt3rtpahxb2wzHEpDHMJV4=;
	h=To:Subject:From:Date:From;
	b=CUG4gSZFxBz+dIl8qhJP53rnG4oRrAqs7DtkOHGsgnfY4KdPra0hnK4xfsj9HciR7
	 DG+soBVLK02bQiI4GNhJpxvo0PeONyECYH/Epnk/xE8nuYdWkzzJFM46VRZQw1m5nL
	 9cZrxpkdnwMuurK9LU9m5vxbZafYz4p04nMekrTE4u/Oaz8JcvreidlF+FnZ3Tae9K
	 //nzAohMWlqRp9D0ZwT8MBpgtUUo16HcBLtju4l+6M4Lr6RQ1lewIep6aV/xRdKOF+
	 miGWSkTXdX/KT+W5Tc2aWQYAjZr0RcYWaUaqPPrxFpNCTrpteD2Sh4XIDdORWR0PTF
	 9kLwFl2OjKOqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B8FCA19A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177309509359.17619.13643944560217881101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9c527c3e56ce4f28969e4d04a70eb33a822ec4baa5813a148653809e904b7d
Date: Mon, 09 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773095093
