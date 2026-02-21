Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440AD14A8E
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771715694; cv=none; b=sd+MUOW2WzRkpyUsJapGRJe/hwWKghBvA0G+yBPZn4srKAfFG3IkNG0QLjmzVK70g4ADLkwoVW8P0Igj+iaiInlEbWw5U6IAhD8KQOJNVlslxzLrgNfJkwTyahQJjO3QLWUXb5esnoNVMtXePx/pR08xZgKaMWGOuA7lB+p7u2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771715694; c=relaxed/simple;
	bh=muksWkZRRt2wJ4R9YeQsJwaRD/MOFLdPkhWe6OZAU6I=;
	h=To:Subject:From:Message-Id:Date; b=IUTFMyWvI6hhrBbqre8194cgH/G3PqJoCy7jdxbHUPCVbUR8kS7N6FhVmC+n3OwbTZ4SkWwhUIOvlU69YnmT6RZnri4uQNvePgFdR7+lIOJY5yRwz2Hurh5OlFHIy92MHTCVf6NdE0I18wwttb6PYohG4DDZJY+IeioX+U4VCnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyeVxnNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyeVxnNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39D0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771715693;
	bh=muksWkZRRt2wJ4R9YeQsJwaRD/MOFLdPkhWe6OZAU6I=;
	h=To:Subject:From:Date:From;
	b=NyeVxnNVXR73/vW6HOtBnmlOtbtgXN3u+Bu2jtrppMYFy+mHSQNwbTaS7cS6Gryuu
	 pLF+txRY/mKdOcIQ5rXYTw7WHHrMYzE1FktKzmEtrZrgKl14iU3SySDb3Go+6vfWHd
	 s6vrq3UZl35naed2kTlf0UfAwq9WzZaBTpCuXTwxaqUlW7dnMExa6UmOGrGbTvBVPf
	 sI/pJJQufUTE/caim3+yfRE5lpvvOy/A+XUpssj8vKOjqED9gSmcMZo5jEb2zG/AFc
	 cG+56yaRVNcK6oN0w/4Stdb9/glya6nF4DKCNNpOhYlu6eDqMLhQP1i/7nccBFEpdM
	 aW1iMdR4yUgOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C5BC624A0
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171569359.15541.7799247998594062534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a4175d949a48d23c2458d608f11fba1b1c76ab32eeeb8f10b618940c5aab9e2
Date: Sat, 21 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771715693
