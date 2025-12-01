Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1B81F30BB
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764612774; cv=none; b=YhW3XO98WjNmbQEz9lNQ0ffxjfd3UwUvTfjo97DxmB6IcxoUkT1HcOV+XMrLNQSDLzyrcopY3IbAhtpdAMxq+wexxeDhS/CH9GEvZezyUWs2FL2IXfVJWcB1Ka5kY9vIdA0LWBwZ3JJLxmr764/pcpLahCZc7DCiTN8fxRllbkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764612774; c=relaxed/simple;
	bh=LMlaqzxsVq6P6V+3fVMq4Hhb0bus2ZmWtBN1sYuSvzA=;
	h=To:Subject:From:Message-Id:Date; b=SWNFigk83t2DDeenW1MoJL5b72ktvLuNSKjszAlst4R4flFyKaF/Rl/XUkA3eKh8j7fmOCRn+XRC8dVntGG70oIiyS9NUL6k00iZYnKf8qof0KBlJYgZYbKh2mz4QSZr/WPLLdfSNmBvJYGXkwdTPMwLELQQl7stX0rLdUt1gJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qClSBSSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qClSBSSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FECC116C6
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764612773;
	bh=LMlaqzxsVq6P6V+3fVMq4Hhb0bus2ZmWtBN1sYuSvzA=;
	h=To:Subject:From:Date:From;
	b=qClSBSSUYKWvcdew//yG6Gwtmpe593e3H82t5NIvMLqHS9W9Fes+LnyM0zVtUWOV3
	 QiLlRWEwcaiW9jxQOTemDEuI2fGoL13qJkNrCkVAliY5hD7RMNoshPGy/W/cAEou7E
	 lBCGcl8dLtt/+jPEIlXyznvYQBWPvEsiTd++q/qI7NT/CMYkM1uUcq8LcBb8Jj24ii
	 Swg81DRa+C2sk//N5KmavePolX3+19m2XjF0RINE3GJFyBfFh3ZGHWnb8UXlnhKccl
	 5pcH/uCJHxfyVz5KXNoiWiNYhmXOAxenp+M11TgAJOnk1m9hWToEZY7c8LyBfwBsWk
	 pnFSQBOkQjFQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BC2D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 18:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461277359.17519.6814094374146165577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29180ba5ab709b9df6392f7285ee9eadea0a4298d56e041c8f22fc2a02b1080
Date: Mon, 01 Dec 2025 18:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764612773
