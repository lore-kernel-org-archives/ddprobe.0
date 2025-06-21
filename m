Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3222C7E1
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750535394; cv=none; b=mbq2lZdsAf/9w5HMvo0muw1g9N4JrvsmPb6EHtu0JUhRupCTSx24O8Hz6r3Q//+U+cmgcP2zga4xC/aiG18mGpQoAVrFB43ZCHq8BmycB0epzHbuHC/JJI/1Smefo9TfugqeU+3xFVAxDpQPgeew1SlBljs10ikClEpNqscD01M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750535394; c=relaxed/simple;
	bh=5ZsRNwURjTBUg2xI7pj2sSCXsoeTSKy5RX9mKbWne7o=;
	h=To:Subject:From:Message-Id:Date; b=RBTyPm8kS16rSXNsPiUZ0lrHlzWzPDbnR1CQCPFvB9YLeInFHFqlyI4EjKa1lKCv9IoaltdTAAZDOP+w49BVn0kNvEM5fjEPxTdmHRy20u2BdQUwQlMtPixOxPkMJ+l/R79E7Z443vzdtUiubAoNZ038TCs1rORTwB/29bJl5Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENA1KJFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENA1KJFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2193C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750535393;
	bh=5ZsRNwURjTBUg2xI7pj2sSCXsoeTSKy5RX9mKbWne7o=;
	h=To:Subject:From:Date:From;
	b=ENA1KJFajP0uxpF7CRyBpE6PM+YWWhAbbyMg9yUA2YVuUODAox7khauy4k/TPE8pd
	 /SZCxPqQQmQlGocmLAU/0N8QNDOoh8yXkCk2+G5ai67jXcrUKUf2TTe7Xqg9m/6VjM
	 RSakiqafdxK2+52qh3hKp6wS//xEy0IYs+XH8clg0C+3agHFi8UCnlmH3f09t+VpwR
	 rtWUbcJU2Bu+6LHZcxSYLokf54GbYmJ539+WkCue+JyprBEeeRe5u+pWA+Scel0FUw
	 1pt8QCp9A26wPoa3M9OBTkvPTyupS1xweTCAQawSxZeLSoYQ6eFDBl/pv74QzHzt3J
	 H98hJkUFMUrMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA3C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053539358.12318.9527731483298774554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe40aa95db2f18a2ee6aa600eb5f067f28305649f2490c5826c723dc55144d7c
Date: Sat, 21 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750535393
