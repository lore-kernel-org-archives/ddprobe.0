Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5330813C3E2
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714117343; cv=none; b=owWEz1+n7GGNX36AHb//aCQGYMBmDgnN518GD1uCOum1VUBma6MXVcJkU23RY+wV1Nb6gSv5cJx566NyhquQ+jPy0EO+gXb3rdYKJC++3W7JnWyF1ZwhfkXzXZIR+0/g1/F5slmL8DjEApLAMjbmIeCKoH9RUTu6qFPD9OieXnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714117343; c=relaxed/simple;
	bh=HLpFMkYVoIlmZqY6QOGpUT23dokQuKTIjcA6sHq1WQY=;
	h=To:Subject:From:Message-Id:Date; b=ZULdUffZ9P96Zj+UQyrJ9ydL5YbKel3k1rLfypeMmtZ3t47kI/iFFA6jAXS/uyzXNywhAl0UpcWIGqsvMnX4Pxul22uuPAx0z0zaNvgPX1QI87jqMa5D5Rv23qYLGXMftHk99QftjGBFdl8X/qaOYEd6P99K3TUC+xiBoK5fz3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ir09GvA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ir09GvA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2BEC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714117342;
	bh=HLpFMkYVoIlmZqY6QOGpUT23dokQuKTIjcA6sHq1WQY=;
	h=To:Subject:From:Date:From;
	b=Ir09GvA+WfAyi8PBzOnZ2g/NxNtpSfcOavCN90lOmvFutBqWdsLMIdJ0fWMOB+E8D
	 DxU8juxMYf9NmvG2Lqce6JlSMYGoAqWUi34gWtdBnoLSd9wfdOf473hKjm1M0yDwhV
	 u1xgu8+nEoKq1VUUS2li1UmcdoBjHfi62p2Sh+OinI/esBjzgB7JpS4BYIzJflFbW+
	 N1ZI8GrxSOb9GFFNBU3QHb36sRn6HpbewEsllsNk3MjTf3sOEtuMvMFCKAjhSGHx9e
	 EWbTDSwAoPdOscMAsDdMECI+UI1uzZS8JfjuvqZKvWZZ9sra7LHLZNP/AGd95o5jER
	 9tbcvgJ8kSxQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4402C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411734279.16558.5875205509899233889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2160e4e9d71b056da33879882652c3782711b76ed69b2ef52c5b2363f8cc3150
Date: Fri, 26 Apr 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714117342
