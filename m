Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EDA817D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782550114; cv=none; b=o8KNLPFY2kC4OG2OHcTu4xMlg3dCd8UyQl5rgvuzUC4j/ODFzSBnJpolM0uQmUOkuCWezKSfM7yEn8NKo/q6fIuNRlfn/pfEw8L/0fHirW+V8niq3jOHS7yGbJ9FmXudqXGf3L7OaJUK/LIWaOkZCRn041q3rHHw+8Ud8p9zh3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782550114; c=relaxed/simple;
	bh=ZbDOXZpYwldFDCJ18k46o+uuPyMRXICQRSOwk1r4zeo=;
	h=To:Subject:From:Message-Id:Date; b=CnjIIOMqZNDvfTkvJyOeFBzp1Td0u8P5PrDYOhP+b9YxKTsXe97Cx40sb0a5L0z4FA2XuXlrvSX7kpXfj8u3KFyJBIOGz3WFlqSM/DiXkxK8EtSYQcAvHBrXkboNU5O9m/+PeNx+vAZQCi2KRe08yiO8Ao8VkesPMCUVUPUWvxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLHEoz1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLHEoz1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA37EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782550113;
	bh=ZbDOXZpYwldFDCJ18k46o+uuPyMRXICQRSOwk1r4zeo=;
	h=To:Subject:From:Date:From;
	b=NLHEoz1GGPVWQtMm59yG0n0GUc4qQMzv3Z4F1F3BekFzq6a9POppWzGN2C3sdsEdC
	 l3gu8YQe4Kw51gUhyzUBpt5iR+19bZulvDDo+ssU0emrWooOd89Bx+ZGgtT7R4tbpZ
	 LaS9ODu20Y/nkv158tlhQpX4ikR0ohin5SOh6AqbXUb8FEnHpYRpbVU/im4nyn98AJ
	 IZvVudQf41RoNGoPMvYlH+zdUh/knrwK+Ni2IAUJR8vhLQe+kcq04/qI3hRuXgN1GN
	 Y/fiIEpWnpKHvytbIGS4CYGB3MiZa9eDO4g0C9MFMpiMA5IpERJ2i0uCVNcxPZ4XoX
	 G0GwvHiSysQMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F82C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255011371.20029.9504904136893389369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211de856fc41615e0eb36050db185de100538d65b50b26c3f85d7ff61ddf8b90
Date: Sat, 27 Jun 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782550113
