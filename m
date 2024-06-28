Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB0D7CF25
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719605663; cv=none; b=XFxWex0AmPCIVKm7h7HIiC4GhCftg3zaoh7LFKC96SrHS0pLvajmcN9lB1/N6DH5CbE14z/blq3tsMuJDezUjz3yea1uCE6HvAfCtiQBd3z8196veupChCRwtWLAyvCTO38v2eUD52cXZkjA5TwxYyw6z+vJbWNsCNHEf/cfGf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719605663; c=relaxed/simple;
	bh=6yw6lb4CB8ja4cB7ZI5JfWCSj4FQtC0TNNapT+ORW1U=;
	h=To:Subject:From:Message-Id:Date; b=ODCIO2EpUItO1MjLsG6nsWYvBvl9ZOrVTlXhQLhIoe8LMykLrxlPWaOFxBMW7DXk71tXMb0zV16au2C/olO/WkrHX9ti8j8gNhzQQMGwdfITYExZQAucCgxN3/mJtbKBUqGw8CFGWa0s8HoBhAXSaaezqtOCVAkVJ1qNsWwZ8Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ismEDTB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ismEDTB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8505C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719605662;
	bh=6yw6lb4CB8ja4cB7ZI5JfWCSj4FQtC0TNNapT+ORW1U=;
	h=To:Subject:From:Date:From;
	b=ismEDTB/RLfNKfdfOc/GVPq1+2uu2EdDYk6IHjtzhrVccZjrC3PvuSucscMasy3rx
	 aQD40EUawFGY6ljhf6EVKgEYB6xgAoy0XKsTM9E48x5iMbByh2Mp0WCVsegBCcKyHU
	 A4YDrhF4OPUIKu+PNxqx28i/Dh7doHqsTXHV0lrrHyzgkUkULmbTlwNVZ6lAkjVgCS
	 pryzTSEBkXqmEd/g7Sbs3Wv2UtOrQrS9n+NatnZxi5nN8apcvgfUZkOcH/d0NxaJT2
	 6cS+a+/20ZUA/1NPBV7ZdnEs3hND/olrPSfOOOEMRqjkNs/zQv0OjRMfHbY+DA0CrF
	 nipwlsC4iOjQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4FA1C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960566279.4143.11591738167176069400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8648734aec8c61013590257fbd7e47f7d4efe9384ef8d8770452413e47a6a0a9
Date: Fri, 28 Jun 2024 20:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719605662
