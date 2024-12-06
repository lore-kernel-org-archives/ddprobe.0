Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B0B328B6
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733472354; cv=none; b=j7tsgG0K5l4Dlep1Q/HnwDZ0ftjwwAxFOZWEk7In8rJ66TSpUS904rO3BtwSRy0DYWn1fJsaLWQylvscdm8My8iA5oHjIL3kbussHr+LGTJaRVFWRszLS5M0wzqeOd30CKiXGa01xwwgFwoLCqil0LY/t2t1LrpBV6HJjs7OiB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733472354; c=relaxed/simple;
	bh=eThA8W6KZU5h4w2R/TCNseMduw/06dMIO/1qhq8uAS4=;
	h=To:Subject:From:Message-Id:Date; b=kae8Wv4HrimnrVKXt3nzgWtJzhLMj/NiQgOTF9kcPXm/DAAKr5IYtVSauuiNG42WapX/Ktti2gxHP7wrElDppI7zxRIKbe6kCD+ynn+CMrC967yhLBVo30Q+EYa94qPvQy1Rv4obkkY27mUyT3ZU1VinfWLoebU/ss9t+oG5v6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlAOfSHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlAOfSHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DDBC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733472353;
	bh=eThA8W6KZU5h4w2R/TCNseMduw/06dMIO/1qhq8uAS4=;
	h=To:Subject:From:Date:From;
	b=OlAOfSHkNhOUcZgUfqzZzi8NbAjVdhcXyh219AevjE++Z/xrQqdrvnthG1XYxp/9M
	 PqvzCghhBjexlZrG4hwDDkQaDNmcvNTtMmFcyDJOtsOwoZMlQsfHbxw1oPDERRG1zj
	 vKfMGeVTd7tonVyUpuNWisoWAhfQjHgDgZMn/iqrY9bnXXy0TRubHPvczFDZD+591P
	 KOl3CqY92KJaQNXCo/OYaMGxlaxzwKnTDzN817U6YoVtcBQ8qCuO0lOR/Zr++bWy4z
	 2p1gkSr0lelCXRIstVCAjL86wZH0KDNPydgw9n30dfu7SfZq/dLbBZFewlRi3k43JW
	 Yc7yW1mg4vZ9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AF8E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173347235359.5603.8061821520596280249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd6d2a7b86ce103711a448cd3c9bbab907ca2636e3569b273d7d50ac7762c50
Date: Fri, 06 Dec 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733472353
