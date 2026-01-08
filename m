Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220D23A4AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767866634; cv=none; b=WYq+bMxaoxX3hqQ6Z7qc+eEI1IDA6rXxZqF9Fd3Ai6eBNDTGfJ3m760gMxw5gZ0mwqLqhoRzwg7SXOGbnPJWh4ttlTf+zSyvRecyt0C64tUjD3obVY4/icbtHYM0RNf8YLlDL/mnqxqntU+zy304qGZf/Jgl/1vPSFwJmLU5vIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767866634; c=relaxed/simple;
	bh=7gTA6xKudN1xtENA1pQ6WTGgiYWfuUxSlmS1OxqgiHE=;
	h=To:Subject:From:Message-Id:Date; b=rC/Se2naWG0C3EvDvmW07B7mAxJH2bKwUxjAQeq0jbAO2cGE3BCkkpON2Z3Vffz8p3JdMsNicr1uDvGABGQJ72OngSY3OwvUpaYXRGkV0yiCnnxU6p4kLMPbbg6towLaf3WWZo/EEFEnVh9/jTcQlqr/uGnGZFuw9vsMba++UF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOKbQXdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOKbQXdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A178CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767866633;
	bh=7gTA6xKudN1xtENA1pQ6WTGgiYWfuUxSlmS1OxqgiHE=;
	h=To:Subject:From:Date:From;
	b=jOKbQXdhh4Mmrv2WkbFoA858DGrlMFjEtP+qjv7sldoGohLDswtBLF/kqGTa4ecjs
	 QBde4OwhCLhUcJiRawv7B9wTLOv5XSqNeV+3anId4qQWRj5qS+VX5q0bF3SX45gueJ
	 Vj5p+xTOynLHSO6Hf+WyUvnwBhFjY8Offmtn5AON/d2sEOnByU5EUAO8zr26B0nUV0
	 FY4hxkP1Wi/0u7radPwl9Cwtxt/bmMZIdo/IiVwYvwGiRXTgoXCP11ZxgScbE3BCJe
	 2z9GsM0Q1yBc00MOO5rsmlaHAq6xTEpROfjHdgLkVP/1VKFeVm6/8H3qF+ekWq0yIE
	 6t42f8yT7DAfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90271CF6ABC
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786663358.8645.1886853828528686945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b03e34dab7a9e290c83ed9b33821bf03f98ca9e9c8f25e942a70ea0f6ed647
Date: Thu, 08 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767866633
