Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99E1392C45
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770107034; cv=none; b=X60clRX0QeJxw1WlBean74F2FaggnepaWZOjg2af558XUanpuwbVAumfVb+i+nqyB22kz1dmvmkF3hj4sIVSIxLX/xB+s765UUOiAR1wkf1p5XSD2XfZwmx5Ej4lEE95PDiU7JQEH/zFQmdr67znqTPH6cbI5kTc3ZosYlMzf24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770107034; c=relaxed/simple;
	bh=x375c3vEKj/4mAjkCbIQNBkPTjdHEMtesKr9Omeyxvw=;
	h=To:Subject:From:Message-Id:Date; b=aGfvOUcNpgkaV8s2JvINWSXfMHyc65a/NNids019Gl5lF7Sxw8FQgJ/V6JLTN/8zHU/8pNzEhSg4RqF2S9/qDZDGXuFOXrss72nSr65vxnLDIoe8nGO6rjyrCUFv8PCBzPyOnCRh7M3uKO8kQHi3RXeHnyR9NIEFOKQQzYgmOI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPZsQPcF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPZsQPcF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A6CC19421
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770107033;
	bh=x375c3vEKj/4mAjkCbIQNBkPTjdHEMtesKr9Omeyxvw=;
	h=To:Subject:From:Date:From;
	b=qPZsQPcFaJ2KBn54y7SvTCPQh4zpRcU87TLzI/mghyDjAfwsCyk9qJRNq2MBL8plC
	 diqyQwZnqLpDu7AQWvNu3L+ia2KEW/2264g8EkRIaPPDWajcwKM/y316RyXFMwv7Gm
	 IcsbnrHEWbZ2io7zaO7kJpekjtPspLcxrYw6Q+c0kZvxMAa3kZK+o3PT7hXerg1yNP
	 N/+27Z6gj4tqv9DkNHDQzPHDwNoRr+G01jKYfFAa5wklg8ObZyBVSilNiD8io4vz+X
	 meIF4vnwX2F+C2le8gMp736Snh1Fs8o2SCyJLnbRV27rM93d9Z4gkU1VQ8a5iIR1q5
	 RIg2/oeekn/hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9FE83061
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010703358.18523.8649612648030506042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a34d61b7641b382210c3e4683b9e8e161659ef0f661cf7005f3a5b0900f4f8a
Date: Tue, 03 Feb 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770107033
