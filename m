Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D39D4B5AE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749873594; cv=none; b=YqZDIzPg6T9uR3nZkRKnZ5lB3cLwbO6qrmkWq6dVlCftts8b8b8n1GQQvltE04Jjg+J3cduyWIwFCYUPZVFfbwf0DMmI/1tNmfLHROqp5P8FCZ6BAXaOzjtaYSEcDjrlPJrSCuAldfhsyBPSZzZRQn9bTTiq4axpT0bjbxPnW1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749873594; c=relaxed/simple;
	bh=3WStejFwxNJUYjcI0hQsUbqyv/WfXjuLcr+lwUelsjc=;
	h=To:Subject:From:Message-Id:Date; b=rEgkhQc2ALsPMKHwpugG8z0Zy61Gyiffe0MrFk2TA8j/sLqRnVhtuTYV8p5L7UHYxdIt3+WGUGYd7V17O95oROjqqK9hO0vtRfHPwjhQuJYdSCoCNraPBMWFVZC9fLNC4URNNAbu6iZhIM+pcC0O2QbLhTY74KjWBY3HIVq/iqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsIAGdJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsIAGdJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A774EC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749873593;
	bh=3WStejFwxNJUYjcI0hQsUbqyv/WfXjuLcr+lwUelsjc=;
	h=To:Subject:From:Date:From;
	b=dsIAGdJKDcwYq/L0ItRn0ZZEPS0Nt5CLmoNh4Iv9WZmsi7LUJZXN5zuWu2Kj62gs/
	 0cGABrh+gmChTsdr+v0Ocao4xPYdTJOREdkaVykRTcxgf5tiJEgE+xxXPUx7689to1
	 D0r+kslHLGVk2Y5aypGF0wnzUGxZJhw7nr4/FBYHd/sbEKHJky34lllMp7NfnQl2fm
	 ZFAks/4ooAipt6I/Ro3c+An+80vJjwK3bqUohO0qFlLns1dF9kyz98Tw/PQAo7Ee3T
	 vxQ97+Vh5ORT1017XBN2Xx5hS3D4Q3yV/i6kve/E5ff4m5KA/q3dQznTi8MpWVKNBT
	 hoiv4EYXocHrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93475C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987359357.7208.7403408336210226292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58e2486807a228f8d47a1caaf9e81823d959f66243fa8f40e12391a7bb5b033
Date: Sat, 14 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749873593
